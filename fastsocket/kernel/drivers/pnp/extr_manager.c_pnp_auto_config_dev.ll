; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/extr_manager.c_pnp_auto_config_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/extr_manager.c_pnp_auto_config_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_dev = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"configuration not supported\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"unable to assign resources\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pnp_auto_config_dev(%struct.pnp_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pnp_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pnp_dev* %0, %struct.pnp_dev** %3, align 8
  %6 = load %struct.pnp_dev*, %struct.pnp_dev** %3, align 8
  %7 = call i32 @pnp_can_configure(%struct.pnp_dev* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load %struct.pnp_dev*, %struct.pnp_dev** %3, align 8
  %11 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %10, i32 0, i32 1
  %12 = call i32 @pnp_dbg(i32* %11, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %44

15:                                               ; preds = %1
  %16 = load %struct.pnp_dev*, %struct.pnp_dev** %3, align 8
  %17 = call i32 @pnp_assign_resources(%struct.pnp_dev* %16, i32 0)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %44

21:                                               ; preds = %15
  store i32 1, i32* %4, align 4
  br label %22

22:                                               ; preds = %36, %21
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.pnp_dev*, %struct.pnp_dev** %3, align 8
  %25 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %22
  %29 = load %struct.pnp_dev*, %struct.pnp_dev** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @pnp_assign_resources(%struct.pnp_dev* %29, i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %44

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %22

39:                                               ; preds = %22
  %40 = load %struct.pnp_dev*, %struct.pnp_dev** %3, align 8
  %41 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %40, i32 0, i32 1
  %42 = call i32 @dev_err(i32* %41, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %39, %34, %20, %9
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @pnp_can_configure(%struct.pnp_dev*) #1

declare dso_local i32 @pnp_dbg(i32*, i8*) #1

declare dso_local i32 @pnp_assign_resources(%struct.pnp_dev*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
