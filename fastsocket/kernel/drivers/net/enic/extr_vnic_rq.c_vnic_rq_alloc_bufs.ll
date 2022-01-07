; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/enic/extr_vnic_rq.c_vnic_rq_alloc_bufs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/enic/extr_vnic_rq.c_vnic_rq_alloc_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnic_rq = type { %struct.vnic_rq_buf**, %struct.vnic_rq_buf*, %struct.vnic_rq_buf*, %struct.TYPE_2__, %struct.vnic_dev* }
%struct.vnic_rq_buf = type { i32, %struct.vnic_rq_buf*, i32* }
%struct.TYPE_2__ = type { i32, i32, i64 }
%struct.vnic_dev = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnic_rq*)* @vnic_rq_alloc_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vnic_rq_alloc_bufs(%struct.vnic_rq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vnic_rq*, align 8
  %4 = alloca %struct.vnic_rq_buf*, align 8
  %5 = alloca %struct.vnic_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vnic_rq* %0, %struct.vnic_rq** %3, align 8
  %10 = load %struct.vnic_rq*, %struct.vnic_rq** %3, align 8
  %11 = getelementptr inbounds %struct.vnic_rq, %struct.vnic_rq* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @VNIC_RQ_BUF_BLKS_NEEDED(i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load %struct.vnic_rq*, %struct.vnic_rq** %3, align 8
  %17 = getelementptr inbounds %struct.vnic_rq, %struct.vnic_rq* %16, i32 0, i32 4
  %18 = load %struct.vnic_dev*, %struct.vnic_dev** %17, align 8
  store %struct.vnic_dev* %18, %struct.vnic_dev** %5, align 8
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %46, %1
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %49

23:                                               ; preds = %19
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @VNIC_RQ_BUF_BLK_SZ(i32 %24)
  %26 = load i32, i32* @GFP_ATOMIC, align 4
  %27 = call %struct.vnic_rq_buf* @kzalloc(i32 %25, i32 %26)
  %28 = load %struct.vnic_rq*, %struct.vnic_rq** %3, align 8
  %29 = getelementptr inbounds %struct.vnic_rq, %struct.vnic_rq* %28, i32 0, i32 0
  %30 = load %struct.vnic_rq_buf**, %struct.vnic_rq_buf*** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.vnic_rq_buf*, %struct.vnic_rq_buf** %30, i64 %32
  store %struct.vnic_rq_buf* %27, %struct.vnic_rq_buf** %33, align 8
  %34 = load %struct.vnic_rq*, %struct.vnic_rq** %3, align 8
  %35 = getelementptr inbounds %struct.vnic_rq, %struct.vnic_rq* %34, i32 0, i32 0
  %36 = load %struct.vnic_rq_buf**, %struct.vnic_rq_buf*** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.vnic_rq_buf*, %struct.vnic_rq_buf** %36, i64 %38
  %40 = load %struct.vnic_rq_buf*, %struct.vnic_rq_buf** %39, align 8
  %41 = icmp ne %struct.vnic_rq_buf* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %23
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %150

45:                                               ; preds = %23
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %6, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %19

49:                                               ; preds = %19
  store i32 0, i32* %6, align 4
  br label %50

50:                                               ; preds = %137, %49
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %54, label %140

54:                                               ; preds = %50
  %55 = load %struct.vnic_rq*, %struct.vnic_rq** %3, align 8
  %56 = getelementptr inbounds %struct.vnic_rq, %struct.vnic_rq* %55, i32 0, i32 0
  %57 = load %struct.vnic_rq_buf**, %struct.vnic_rq_buf*** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.vnic_rq_buf*, %struct.vnic_rq_buf** %57, i64 %59
  %61 = load %struct.vnic_rq_buf*, %struct.vnic_rq_buf** %60, align 8
  store %struct.vnic_rq_buf* %61, %struct.vnic_rq_buf** %4, align 8
  store i32 0, i32* %7, align 4
  br label %62

62:                                               ; preds = %133, %54
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @VNIC_RQ_BUF_BLK_ENTRIES(i32 %64)
  %66 = icmp ult i32 %63, %65
  br i1 %66, label %67, label %136

67:                                               ; preds = %62
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @VNIC_RQ_BUF_BLK_ENTRIES(i32 %69)
  %71 = mul i32 %68, %70
  %72 = load i32, i32* %7, align 4
  %73 = add i32 %71, %72
  %74 = load %struct.vnic_rq_buf*, %struct.vnic_rq_buf** %4, align 8
  %75 = getelementptr inbounds %struct.vnic_rq_buf, %struct.vnic_rq_buf* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load %struct.vnic_rq*, %struct.vnic_rq** %3, align 8
  %77 = getelementptr inbounds %struct.vnic_rq, %struct.vnic_rq* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to i32*
  %81 = load %struct.vnic_rq*, %struct.vnic_rq** %3, align 8
  %82 = getelementptr inbounds %struct.vnic_rq, %struct.vnic_rq* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.vnic_rq_buf*, %struct.vnic_rq_buf** %4, align 8
  %86 = getelementptr inbounds %struct.vnic_rq_buf, %struct.vnic_rq_buf* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = mul i32 %84, %87
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %80, i64 %89
  %91 = load %struct.vnic_rq_buf*, %struct.vnic_rq_buf** %4, align 8
  %92 = getelementptr inbounds %struct.vnic_rq_buf, %struct.vnic_rq_buf* %91, i32 0, i32 2
  store i32* %90, i32** %92, align 8
  %93 = load %struct.vnic_rq_buf*, %struct.vnic_rq_buf** %4, align 8
  %94 = getelementptr inbounds %struct.vnic_rq_buf, %struct.vnic_rq_buf* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = add i32 %95, 1
  %97 = load i32, i32* %8, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %107

99:                                               ; preds = %67
  %100 = load %struct.vnic_rq*, %struct.vnic_rq** %3, align 8
  %101 = getelementptr inbounds %struct.vnic_rq, %struct.vnic_rq* %100, i32 0, i32 0
  %102 = load %struct.vnic_rq_buf**, %struct.vnic_rq_buf*** %101, align 8
  %103 = getelementptr inbounds %struct.vnic_rq_buf*, %struct.vnic_rq_buf** %102, i64 0
  %104 = load %struct.vnic_rq_buf*, %struct.vnic_rq_buf** %103, align 8
  %105 = load %struct.vnic_rq_buf*, %struct.vnic_rq_buf** %4, align 8
  %106 = getelementptr inbounds %struct.vnic_rq_buf, %struct.vnic_rq_buf* %105, i32 0, i32 1
  store %struct.vnic_rq_buf* %104, %struct.vnic_rq_buf** %106, align 8
  br label %136

107:                                              ; preds = %67
  %108 = load i32, i32* %7, align 4
  %109 = add i32 %108, 1
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @VNIC_RQ_BUF_BLK_ENTRIES(i32 %110)
  %112 = icmp eq i32 %109, %111
  br i1 %112, label %113, label %124

113:                                              ; preds = %107
  %114 = load %struct.vnic_rq*, %struct.vnic_rq** %3, align 8
  %115 = getelementptr inbounds %struct.vnic_rq, %struct.vnic_rq* %114, i32 0, i32 0
  %116 = load %struct.vnic_rq_buf**, %struct.vnic_rq_buf*** %115, align 8
  %117 = load i32, i32* %6, align 4
  %118 = add i32 %117, 1
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds %struct.vnic_rq_buf*, %struct.vnic_rq_buf** %116, i64 %119
  %121 = load %struct.vnic_rq_buf*, %struct.vnic_rq_buf** %120, align 8
  %122 = load %struct.vnic_rq_buf*, %struct.vnic_rq_buf** %4, align 8
  %123 = getelementptr inbounds %struct.vnic_rq_buf, %struct.vnic_rq_buf* %122, i32 0, i32 1
  store %struct.vnic_rq_buf* %121, %struct.vnic_rq_buf** %123, align 8
  br label %131

124:                                              ; preds = %107
  %125 = load %struct.vnic_rq_buf*, %struct.vnic_rq_buf** %4, align 8
  %126 = getelementptr inbounds %struct.vnic_rq_buf, %struct.vnic_rq_buf* %125, i64 1
  %127 = load %struct.vnic_rq_buf*, %struct.vnic_rq_buf** %4, align 8
  %128 = getelementptr inbounds %struct.vnic_rq_buf, %struct.vnic_rq_buf* %127, i32 0, i32 1
  store %struct.vnic_rq_buf* %126, %struct.vnic_rq_buf** %128, align 8
  %129 = load %struct.vnic_rq_buf*, %struct.vnic_rq_buf** %4, align 8
  %130 = getelementptr inbounds %struct.vnic_rq_buf, %struct.vnic_rq_buf* %129, i32 1
  store %struct.vnic_rq_buf* %130, %struct.vnic_rq_buf** %4, align 8
  br label %131

131:                                              ; preds = %124, %113
  br label %132

132:                                              ; preds = %131
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %7, align 4
  %135 = add i32 %134, 1
  store i32 %135, i32* %7, align 4
  br label %62

136:                                              ; preds = %99, %62
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %6, align 4
  %139 = add i32 %138, 1
  store i32 %139, i32* %6, align 4
  br label %50

140:                                              ; preds = %50
  %141 = load %struct.vnic_rq*, %struct.vnic_rq** %3, align 8
  %142 = getelementptr inbounds %struct.vnic_rq, %struct.vnic_rq* %141, i32 0, i32 0
  %143 = load %struct.vnic_rq_buf**, %struct.vnic_rq_buf*** %142, align 8
  %144 = getelementptr inbounds %struct.vnic_rq_buf*, %struct.vnic_rq_buf** %143, i64 0
  %145 = load %struct.vnic_rq_buf*, %struct.vnic_rq_buf** %144, align 8
  %146 = load %struct.vnic_rq*, %struct.vnic_rq** %3, align 8
  %147 = getelementptr inbounds %struct.vnic_rq, %struct.vnic_rq* %146, i32 0, i32 1
  store %struct.vnic_rq_buf* %145, %struct.vnic_rq_buf** %147, align 8
  %148 = load %struct.vnic_rq*, %struct.vnic_rq** %3, align 8
  %149 = getelementptr inbounds %struct.vnic_rq, %struct.vnic_rq* %148, i32 0, i32 2
  store %struct.vnic_rq_buf* %145, %struct.vnic_rq_buf** %149, align 8
  store i32 0, i32* %2, align 4
  br label %150

150:                                              ; preds = %140, %42
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local i32 @VNIC_RQ_BUF_BLKS_NEEDED(i32) #1

declare dso_local %struct.vnic_rq_buf* @kzalloc(i32, i32) #1

declare dso_local i32 @VNIC_RQ_BUF_BLK_SZ(i32) #1

declare dso_local i32 @VNIC_RQ_BUF_BLK_ENTRIES(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
