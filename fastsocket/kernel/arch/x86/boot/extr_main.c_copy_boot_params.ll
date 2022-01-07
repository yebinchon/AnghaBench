; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/boot/extr_main.c_copy_boot_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/boot/extr_main.c_copy_boot_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.old_cmdline = type { i32, i32 }

@OLD_CL_ADDRESS = common dso_local global i64 0, align 8
@boot_params = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@hdr = common dso_local global i32 0, align 4
@OLD_CL_MAGIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @copy_boot_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_boot_params() #0 {
  %1 = alloca %struct.old_cmdline*, align 8
  %2 = alloca i32, align 4
  %3 = load i64, i64* @OLD_CL_ADDRESS, align 8
  %4 = inttoptr i64 %3 to %struct.old_cmdline*
  store %struct.old_cmdline* %4, %struct.old_cmdline** %1, align 8
  %5 = call i32 @BUILD_BUG_ON(i32 1)
  %6 = call i32 @memcpy(%struct.TYPE_3__* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_params, i32 0, i32 0), i32* @hdr, i32 4)
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_params, i32 0, i32 0, i32 0), align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %34, label %9

9:                                                ; preds = %0
  %10 = load %struct.old_cmdline*, %struct.old_cmdline** %1, align 8
  %11 = getelementptr inbounds %struct.old_cmdline, %struct.old_cmdline* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = load i64, i64* @OLD_CL_MAGIC, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %34

16:                                               ; preds = %9
  %17 = load %struct.old_cmdline*, %struct.old_cmdline** %1, align 8
  %18 = getelementptr inbounds %struct.old_cmdline, %struct.old_cmdline* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_params, i32 0, i32 0, i32 1), align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = call i32 (...) @ds()
  store i32 %24, i32* %2, align 4
  br label %26

25:                                               ; preds = %16
  store i32 36864, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %23
  %27 = load i32, i32* %2, align 4
  %28 = shl i32 %27, 4
  %29 = load %struct.old_cmdline*, %struct.old_cmdline** %1, align 8
  %30 = getelementptr inbounds %struct.old_cmdline, %struct.old_cmdline* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %28, %31
  %33 = sext i32 %32 to i64
  store i64 %33, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_params, i32 0, i32 0, i32 0), align 8
  br label %34

34:                                               ; preds = %26, %9, %0
  ret void
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_3__*, i32*, i32) #1

declare dso_local i32 @ds(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
