; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_hermes.c_hermes_aux_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_hermes.c_hermes_aux_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hermes = type { i32 }

@HERMES_AUX_ENABLED = common dso_local global i32 0, align 4
@HERMES_AUX_DISABLED = common dso_local global i32 0, align 4
@HERMES_AUX_ENABLE = common dso_local global i32 0, align 4
@HERMES_AUX_DISABLE = common dso_local global i32 0, align 4
@HERMES_CONTROL = common dso_local global i32 0, align 4
@HERMES_PARAM0 = common dso_local global i32 0, align 4
@HERMES_AUX_PW0 = common dso_local global i32 0, align 4
@HERMES_PARAM1 = common dso_local global i32 0, align 4
@HERMES_AUX_PW1 = common dso_local global i32 0, align 4
@HERMES_PARAM2 = common dso_local global i32 0, align 4
@HERMES_AUX_PW2 = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hermes*, i32)* @hermes_aux_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hermes_aux_control(%struct.hermes* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hermes*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hermes* %0, %struct.hermes** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @HERMES_AUX_ENABLED, align 4
  br label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @HERMES_AUX_DISABLED, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ]
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @HERMES_AUX_ENABLE, align 4
  br label %23

21:                                               ; preds = %15
  %22 = load i32, i32* @HERMES_AUX_DISABLE, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %7, align 4
  %25 = load %struct.hermes*, %struct.hermes** %4, align 8
  %26 = load i32, i32* @HERMES_CONTROL, align 4
  %27 = call i32 @hermes_read_reg(%struct.hermes* %25, i32 %26)
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %66

31:                                               ; preds = %23
  %32 = load %struct.hermes*, %struct.hermes** %4, align 8
  %33 = load i32, i32* @HERMES_PARAM0, align 4
  %34 = load i32, i32* @HERMES_AUX_PW0, align 4
  %35 = call i32 @hermes_write_reg(%struct.hermes* %32, i32 %33, i32 %34)
  %36 = load %struct.hermes*, %struct.hermes** %4, align 8
  %37 = load i32, i32* @HERMES_PARAM1, align 4
  %38 = load i32, i32* @HERMES_AUX_PW1, align 4
  %39 = call i32 @hermes_write_reg(%struct.hermes* %36, i32 %37, i32 %38)
  %40 = load %struct.hermes*, %struct.hermes** %4, align 8
  %41 = load i32, i32* @HERMES_PARAM2, align 4
  %42 = load i32, i32* @HERMES_AUX_PW2, align 4
  %43 = call i32 @hermes_write_reg(%struct.hermes* %40, i32 %41, i32 %42)
  %44 = load %struct.hermes*, %struct.hermes** %4, align 8
  %45 = load i32, i32* @HERMES_CONTROL, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @hermes_write_reg(%struct.hermes* %44, i32 %45, i32 %46)
  store i32 0, i32* %8, align 4
  br label %48

48:                                               ; preds = %60, %31
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %49, 20
  br i1 %50, label %51, label %63

51:                                               ; preds = %48
  %52 = call i32 @udelay(i32 10)
  %53 = load %struct.hermes*, %struct.hermes** %4, align 8
  %54 = load i32, i32* @HERMES_CONTROL, align 4
  %55 = call i32 @hermes_read_reg(%struct.hermes* %53, i32 %54)
  %56 = load i32, i32* %6, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %66

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %48

63:                                               ; preds = %48
  %64 = load i32, i32* @EBUSY, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %63, %58, %30
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @hermes_read_reg(%struct.hermes*, i32) #1

declare dso_local i32 @hermes_write_reg(%struct.hermes*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
