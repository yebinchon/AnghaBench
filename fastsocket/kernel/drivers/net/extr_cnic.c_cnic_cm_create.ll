; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_cm_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_cm_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { %struct.cnic_local* }
%struct.cnic_local = type { %struct.cnic_sock*, %struct.cnic_context* }
%struct.cnic_sock = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, %struct.cnic_dev*, i32, i32 }
%struct.cnic_context = type { i32 }

@MAX_CM_SK_TBL_SZ = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@CTX_FL_OFFLD_START = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@SK_F_INUSE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@DEF_KA_TIMEOUT = common dso_local global i32 0, align 4
@DEF_KA_INTERVAL = common dso_local global i32 0, align 4
@DEF_KA_MAX_PROBE_COUNT = common dso_local global i32 0, align 4
@DEF_TOS = common dso_local global i32 0, align 4
@DEF_TTL = common dso_local global i32 0, align 4
@DEF_SND_SEQ_SCALE = common dso_local global i32 0, align 4
@DEF_RCV_BUF = common dso_local global i32 0, align 4
@DEF_SND_BUF = common dso_local global i32 0, align 4
@DEF_SEED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cnic_dev*, i32, i64, i64, %struct.cnic_sock**, i8*)* @cnic_cm_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_cm_create(%struct.cnic_dev* %0, i32 %1, i64 %2, i64 %3, %struct.cnic_sock** %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.cnic_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.cnic_sock**, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.cnic_local*, align 8
  %15 = alloca %struct.cnic_sock*, align 8
  %16 = alloca %struct.cnic_context*, align 8
  store %struct.cnic_dev* %0, %struct.cnic_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store %struct.cnic_sock** %4, %struct.cnic_sock*** %12, align 8
  store i8* %5, i8** %13, align 8
  %17 = load %struct.cnic_dev*, %struct.cnic_dev** %8, align 8
  %18 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %17, i32 0, i32 0
  %19 = load %struct.cnic_local*, %struct.cnic_local** %18, align 8
  store %struct.cnic_local* %19, %struct.cnic_local** %14, align 8
  %20 = load i64, i64* %11, align 8
  %21 = load i64, i64* @MAX_CM_SK_TBL_SZ, align 8
  %22 = icmp uge i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %6
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  br label %113

26:                                               ; preds = %6
  %27 = load %struct.cnic_local*, %struct.cnic_local** %14, align 8
  %28 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %27, i32 0, i32 1
  %29 = load %struct.cnic_context*, %struct.cnic_context** %28, align 8
  %30 = icmp ne %struct.cnic_context* %29, null
  br i1 %30, label %31, label %46

31:                                               ; preds = %26
  %32 = load %struct.cnic_local*, %struct.cnic_local** %14, align 8
  %33 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %32, i32 0, i32 1
  %34 = load %struct.cnic_context*, %struct.cnic_context** %33, align 8
  %35 = load i64, i64* %11, align 8
  %36 = getelementptr inbounds %struct.cnic_context, %struct.cnic_context* %34, i64 %35
  store %struct.cnic_context* %36, %struct.cnic_context** %16, align 8
  %37 = load i32, i32* @CTX_FL_OFFLD_START, align 4
  %38 = load %struct.cnic_context*, %struct.cnic_context** %16, align 8
  %39 = getelementptr inbounds %struct.cnic_context, %struct.cnic_context* %38, i32 0, i32 0
  %40 = call i64 @test_bit(i32 %37, i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %31
  %43 = load i32, i32* @EAGAIN, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %7, align 4
  br label %113

45:                                               ; preds = %31
  br label %46

46:                                               ; preds = %45, %26
  %47 = load %struct.cnic_local*, %struct.cnic_local** %14, align 8
  %48 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %47, i32 0, i32 0
  %49 = load %struct.cnic_sock*, %struct.cnic_sock** %48, align 8
  %50 = load i64, i64* %11, align 8
  %51 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %49, i64 %50
  store %struct.cnic_sock* %51, %struct.cnic_sock** %15, align 8
  %52 = load %struct.cnic_sock*, %struct.cnic_sock** %15, align 8
  %53 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %52, i32 0, i32 15
  %54 = call i64 @atomic_read(i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %46
  %57 = load i32, i32* @EAGAIN, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %7, align 4
  br label %113

59:                                               ; preds = %46
  %60 = load i32, i32* @SK_F_INUSE, align 4
  %61 = load %struct.cnic_sock*, %struct.cnic_sock** %15, align 8
  %62 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %61, i32 0, i32 14
  %63 = call i64 @test_and_set_bit(i32 %60, i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i32, i32* @EBUSY, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %7, align 4
  br label %113

68:                                               ; preds = %59
  %69 = load %struct.cnic_dev*, %struct.cnic_dev** %8, align 8
  %70 = load %struct.cnic_sock*, %struct.cnic_sock** %15, align 8
  %71 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %70, i32 0, i32 13
  store %struct.cnic_dev* %69, %struct.cnic_dev** %71, align 8
  %72 = load i64, i64* %10, align 8
  %73 = load %struct.cnic_sock*, %struct.cnic_sock** %15, align 8
  %74 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  %75 = load i64, i64* %11, align 8
  %76 = load %struct.cnic_sock*, %struct.cnic_sock** %15, align 8
  %77 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %76, i32 0, i32 1
  store i64 %75, i64* %77, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.cnic_sock*, %struct.cnic_sock** %15, align 8
  %80 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  %81 = load i8*, i8** %13, align 8
  %82 = load %struct.cnic_sock*, %struct.cnic_sock** %15, align 8
  %83 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %82, i32 0, i32 12
  store i8* %81, i8** %83, align 8
  %84 = load i32, i32* @DEF_KA_TIMEOUT, align 4
  %85 = load %struct.cnic_sock*, %struct.cnic_sock** %15, align 8
  %86 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %85, i32 0, i32 11
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* @DEF_KA_INTERVAL, align 4
  %88 = load %struct.cnic_sock*, %struct.cnic_sock** %15, align 8
  %89 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %88, i32 0, i32 10
  store i32 %87, i32* %89, align 8
  %90 = load i32, i32* @DEF_KA_MAX_PROBE_COUNT, align 4
  %91 = load %struct.cnic_sock*, %struct.cnic_sock** %15, align 8
  %92 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %91, i32 0, i32 9
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* @DEF_TOS, align 4
  %94 = load %struct.cnic_sock*, %struct.cnic_sock** %15, align 8
  %95 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %94, i32 0, i32 8
  store i32 %93, i32* %95, align 8
  %96 = load i32, i32* @DEF_TTL, align 4
  %97 = load %struct.cnic_sock*, %struct.cnic_sock** %15, align 8
  %98 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %97, i32 0, i32 7
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* @DEF_SND_SEQ_SCALE, align 4
  %100 = load %struct.cnic_sock*, %struct.cnic_sock** %15, align 8
  %101 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %100, i32 0, i32 6
  store i32 %99, i32* %101, align 8
  %102 = load i32, i32* @DEF_RCV_BUF, align 4
  %103 = load %struct.cnic_sock*, %struct.cnic_sock** %15, align 8
  %104 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %103, i32 0, i32 5
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* @DEF_SND_BUF, align 4
  %106 = load %struct.cnic_sock*, %struct.cnic_sock** %15, align 8
  %107 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %106, i32 0, i32 4
  store i32 %105, i32* %107, align 8
  %108 = load i32, i32* @DEF_SEED, align 4
  %109 = load %struct.cnic_sock*, %struct.cnic_sock** %15, align 8
  %110 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 4
  %111 = load %struct.cnic_sock*, %struct.cnic_sock** %15, align 8
  %112 = load %struct.cnic_sock**, %struct.cnic_sock*** %12, align 8
  store %struct.cnic_sock* %111, %struct.cnic_sock** %112, align 8
  store i32 0, i32* %7, align 4
  br label %113

113:                                              ; preds = %68, %65, %56, %42, %23
  %114 = load i32, i32* %7, align 4
  ret i32 %114
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
