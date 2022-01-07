; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-core.c_init_request_from_bio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-core.c_init_request_from_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32, i32, i32, i32, i64, i32, i32 }
%struct.bio = type { i32, i32, i32 }

@REQ_TYPE_FS = common dso_local global i32 0, align 4
@BIO_RW_AHEAD = common dso_local global i32 0, align 4
@REQ_FAILFAST_MASK = common dso_local global i32 0, align 4
@BIO_RW_DISCARD = common dso_local global i32 0, align 4
@REQ_DISCARD = common dso_local global i32 0, align 4
@BIO_RW_BARRIER = common dso_local global i32 0, align 4
@REQ_HARDBARRIER = common dso_local global i32 0, align 4
@BIO_RW_SYNCIO = common dso_local global i32 0, align 4
@REQ_RW_SYNC = common dso_local global i32 0, align 4
@BIO_RW_META = common dso_local global i32 0, align 4
@REQ_RW_META = common dso_local global i32 0, align 4
@BIO_RW_NOIDLE = common dso_local global i32 0, align 4
@REQ_NOIDLE = common dso_local global i32 0, align 4
@BIO_RW_FLUSH = common dso_local global i32 0, align 4
@REQ_FLUSH = common dso_local global i32 0, align 4
@BIO_RW_FUA = common dso_local global i32 0, align 4
@REQ_FUA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_request_from_bio(%struct.request* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.request*, align 8
  %4 = alloca %struct.bio*, align 8
  store %struct.request* %0, %struct.request** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %5 = load %struct.bio*, %struct.bio** %4, align 8
  %6 = getelementptr inbounds %struct.bio, %struct.bio* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.request*, %struct.request** %3, align 8
  %9 = getelementptr inbounds %struct.request, %struct.request* %8, i32 0, i32 6
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* @REQ_TYPE_FS, align 4
  %11 = load %struct.request*, %struct.request** %3, align 8
  %12 = getelementptr inbounds %struct.request, %struct.request* %11, i32 0, i32 5
  store i32 %10, i32* %12, align 8
  %13 = load %struct.bio*, %struct.bio** %4, align 8
  %14 = load i32, i32* @BIO_RW_AHEAD, align 4
  %15 = call i64 @bio_rw_flagged(%struct.bio* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load i32, i32* @REQ_FAILFAST_MASK, align 4
  %19 = load %struct.request*, %struct.request** %3, align 8
  %20 = getelementptr inbounds %struct.request, %struct.request* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 8
  br label %33

23:                                               ; preds = %2
  %24 = load %struct.bio*, %struct.bio** %4, align 8
  %25 = getelementptr inbounds %struct.bio, %struct.bio* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @REQ_FAILFAST_MASK, align 4
  %28 = and i32 %26, %27
  %29 = load %struct.request*, %struct.request** %3, align 8
  %30 = getelementptr inbounds %struct.request, %struct.request* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 8
  br label %33

33:                                               ; preds = %23, %17
  %34 = load %struct.bio*, %struct.bio** %4, align 8
  %35 = load i32, i32* @BIO_RW_DISCARD, align 4
  %36 = call i64 @bio_rw_flagged(%struct.bio* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load i32, i32* @REQ_DISCARD, align 4
  %40 = load %struct.request*, %struct.request** %3, align 8
  %41 = getelementptr inbounds %struct.request, %struct.request* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 8
  br label %44

44:                                               ; preds = %38, %33
  %45 = load %struct.bio*, %struct.bio** %4, align 8
  %46 = load i32, i32* @BIO_RW_BARRIER, align 4
  %47 = call i64 @bio_rw_flagged(%struct.bio* %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load i32, i32* @REQ_HARDBARRIER, align 4
  %51 = load %struct.request*, %struct.request** %3, align 8
  %52 = getelementptr inbounds %struct.request, %struct.request* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  br label %55

55:                                               ; preds = %49, %44
  %56 = load %struct.bio*, %struct.bio** %4, align 8
  %57 = load i32, i32* @BIO_RW_SYNCIO, align 4
  %58 = call i64 @bio_rw_flagged(%struct.bio* %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load i32, i32* @REQ_RW_SYNC, align 4
  %62 = load %struct.request*, %struct.request** %3, align 8
  %63 = getelementptr inbounds %struct.request, %struct.request* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  br label %66

66:                                               ; preds = %60, %55
  %67 = load %struct.bio*, %struct.bio** %4, align 8
  %68 = load i32, i32* @BIO_RW_META, align 4
  %69 = call i64 @bio_rw_flagged(%struct.bio* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = load i32, i32* @REQ_RW_META, align 4
  %73 = load %struct.request*, %struct.request** %3, align 8
  %74 = getelementptr inbounds %struct.request, %struct.request* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 8
  br label %77

77:                                               ; preds = %71, %66
  %78 = load %struct.bio*, %struct.bio** %4, align 8
  %79 = load i32, i32* @BIO_RW_NOIDLE, align 4
  %80 = call i64 @bio_rw_flagged(%struct.bio* %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = load i32, i32* @REQ_NOIDLE, align 4
  %84 = load %struct.request*, %struct.request** %3, align 8
  %85 = getelementptr inbounds %struct.request, %struct.request* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 8
  br label %88

88:                                               ; preds = %82, %77
  %89 = load %struct.bio*, %struct.bio** %4, align 8
  %90 = load i32, i32* @BIO_RW_FLUSH, align 4
  %91 = call i64 @bio_rw_flagged(%struct.bio* %89, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = load i32, i32* @REQ_FLUSH, align 4
  %95 = load %struct.request*, %struct.request** %3, align 8
  %96 = getelementptr inbounds %struct.request, %struct.request* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 8
  br label %99

99:                                               ; preds = %93, %88
  %100 = load %struct.bio*, %struct.bio** %4, align 8
  %101 = load i32, i32* @BIO_RW_FUA, align 4
  %102 = call i64 @bio_rw_flagged(%struct.bio* %100, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %99
  %105 = load i32, i32* @REQ_FUA, align 4
  %106 = load %struct.request*, %struct.request** %3, align 8
  %107 = getelementptr inbounds %struct.request, %struct.request* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 8
  br label %110

110:                                              ; preds = %104, %99
  %111 = load %struct.request*, %struct.request** %3, align 8
  %112 = getelementptr inbounds %struct.request, %struct.request* %111, i32 0, i32 4
  store i64 0, i64* %112, align 8
  %113 = load %struct.bio*, %struct.bio** %4, align 8
  %114 = getelementptr inbounds %struct.bio, %struct.bio* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.request*, %struct.request** %3, align 8
  %117 = getelementptr inbounds %struct.request, %struct.request* %116, i32 0, i32 3
  store i32 %115, i32* %117, align 4
  %118 = load %struct.bio*, %struct.bio** %4, align 8
  %119 = call i32 @bio_prio(%struct.bio* %118)
  %120 = load %struct.request*, %struct.request** %3, align 8
  %121 = getelementptr inbounds %struct.request, %struct.request* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 8
  %122 = load %struct.request*, %struct.request** %3, align 8
  %123 = getelementptr inbounds %struct.request, %struct.request* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.request*, %struct.request** %3, align 8
  %126 = load %struct.bio*, %struct.bio** %4, align 8
  %127 = call i32 @blk_rq_bio_prep(i32 %124, %struct.request* %125, %struct.bio* %126)
  ret void
}

declare dso_local i64 @bio_rw_flagged(%struct.bio*, i32) #1

declare dso_local i32 @bio_prio(%struct.bio*) #1

declare dso_local i32 @blk_rq_bio_prep(i32, %struct.request*, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
