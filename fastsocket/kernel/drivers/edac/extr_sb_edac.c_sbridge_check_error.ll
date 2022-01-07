; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_sb_edac.c_sbridge_check_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_sb_edac.c_sbridge_check_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.sbridge_pvt* }
%struct.sbridge_pvt = type { i32, i32, %struct.mce*, i64, i32* }
%struct.mce = type { i32 }

@MCE_LOG_LEN = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Lost %d memory errors\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*)* @sbridge_check_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbridge_check_error(%struct.mem_ctl_info* %0) #0 {
  %2 = alloca %struct.mem_ctl_info*, align 8
  %3 = alloca %struct.sbridge_pvt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mce*, align 8
  %7 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %2, align 8
  %8 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %9 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %8, i32 0, i32 0
  %10 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %9, align 8
  store %struct.sbridge_pvt* %10, %struct.sbridge_pvt** %3, align 8
  store i32 0, i32* %5, align 4
  %11 = call i32 (...) @smp_rmb()
  %12 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %3, align 8
  %13 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @MCE_LOG_LEN, align 4
  %16 = add i32 %14, %15
  %17 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %3, align 8
  %18 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = sub i32 %16, %19
  %21 = load i32, i32* @MCE_LOG_LEN, align 4
  %22 = urem i32 %20, %21
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  br label %119

26:                                               ; preds = %1
  %27 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %3, align 8
  %28 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %27, i32 0, i32 2
  %29 = load %struct.mce*, %struct.mce** %28, align 8
  store %struct.mce* %29, %struct.mce** %6, align 8
  %30 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %3, align 8
  %31 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %5, align 4
  %34 = add i32 %32, %33
  %35 = load i32, i32* @MCE_LOG_LEN, align 4
  %36 = icmp ugt i32 %34, %35
  br i1 %36, label %37, label %67

37:                                               ; preds = %26
  %38 = load i32, i32* @MCE_LOG_LEN, align 4
  %39 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %3, align 8
  %40 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sub i32 %38, %41
  store i32 %42, i32* %7, align 4
  %43 = load %struct.mce*, %struct.mce** %6, align 8
  %44 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %3, align 8
  %45 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %44, i32 0, i32 4
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %3, align 8
  %48 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %46, i64 %50
  %52 = load i32, i32* %7, align 4
  %53 = zext i32 %52 to i64
  %54 = mul i64 4, %53
  %55 = trunc i64 %54 to i32
  %56 = call i32 @memcpy(%struct.mce* %43, i32* %51, i32 %55)
  %57 = call i32 (...) @smp_wmb()
  %58 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %3, align 8
  %59 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %58, i32 0, i32 1
  store i32 0, i32* %59, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %5, align 4
  %62 = sub i32 %61, %60
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.mce*, %struct.mce** %6, align 8
  %65 = zext i32 %63 to i64
  %66 = getelementptr inbounds %struct.mce, %struct.mce* %64, i64 %65
  store %struct.mce* %66, %struct.mce** %6, align 8
  br label %67

67:                                               ; preds = %37, %26
  %68 = load %struct.mce*, %struct.mce** %6, align 8
  %69 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %3, align 8
  %70 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %69, i32 0, i32 4
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %3, align 8
  %73 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %71, i64 %75
  %77 = load i32, i32* %5, align 4
  %78 = zext i32 %77 to i64
  %79 = mul i64 4, %78
  %80 = trunc i64 %79 to i32
  %81 = call i32 @memcpy(%struct.mce* %68, i32* %76, i32 %80)
  %82 = call i32 (...) @smp_wmb()
  %83 = load i32, i32* %5, align 4
  %84 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %3, align 8
  %85 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = add i32 %86, %83
  store i32 %87, i32* %85, align 4
  %88 = call i32 (...) @smp_rmb()
  %89 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %3, align 8
  %90 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %67
  %94 = load i32, i32* @KERN_ERR, align 4
  %95 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %3, align 8
  %96 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @sbridge_printk(i32 %94, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %97)
  %99 = call i32 (...) @smp_wmb()
  %100 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %3, align 8
  %101 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %100, i32 0, i32 3
  store i64 0, i64* %101, align 8
  br label %102

102:                                              ; preds = %93, %67
  store i32 0, i32* %4, align 4
  br label %103

103:                                              ; preds = %116, %102
  %104 = load i32, i32* %4, align 4
  %105 = load i32, i32* %5, align 4
  %106 = icmp ult i32 %104, %105
  br i1 %106, label %107, label %119

107:                                              ; preds = %103
  %108 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %109 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %3, align 8
  %110 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %109, i32 0, i32 2
  %111 = load %struct.mce*, %struct.mce** %110, align 8
  %112 = load i32, i32* %4, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.mce, %struct.mce* %111, i64 %113
  %115 = call i32 @sbridge_mce_output_error(%struct.mem_ctl_info* %108, %struct.mce* %114)
  br label %116

116:                                              ; preds = %107
  %117 = load i32, i32* %4, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %4, align 4
  br label %103

119:                                              ; preds = %25, %103
  ret void
}

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @memcpy(%struct.mce*, i32*, i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @sbridge_printk(i32, i8*, i64) #1

declare dso_local i32 @sbridge_mce_output_error(%struct.mem_ctl_info*, %struct.mce*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
