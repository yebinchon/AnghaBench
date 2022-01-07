; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_atmio.c_ni_isapnp_find_board.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_atmio.c_ni_isapnp_find_board.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.pnp_dev = type { i32* }

@n_ni_boards = common dso_local global i32 0, align 4
@ni_boards = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [50 x i8] c"ni_atmio: %s found but already active, skipping.\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"ni_atmio: pnp invalid port or irq, aborting\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pnp_dev**)* @ni_isapnp_find_board to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_isapnp_find_board(%struct.pnp_dev** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pnp_dev**, align 8
  %4 = alloca %struct.pnp_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.pnp_dev** %0, %struct.pnp_dev*** %3, align 8
  store %struct.pnp_dev* null, %struct.pnp_dev** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %64, %1
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @n_ni_boards, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %67

10:                                               ; preds = %6
  %11 = call i32 @ISAPNP_VENDOR(i8 signext 78, i8 signext 73, i8 signext 67)
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ni_boards, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ISAPNP_FUNCTION(i32 %17)
  %19 = call %struct.pnp_dev* @pnp_find_dev(i32* null, i32 %11, i32 %18, i32* null)
  store %struct.pnp_dev* %19, %struct.pnp_dev** %4, align 8
  %20 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %21 = icmp eq %struct.pnp_dev* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %10
  %23 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %24 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %22, %10
  br label %64

28:                                               ; preds = %22
  %29 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %30 = call i64 @pnp_device_attach(%struct.pnp_dev* %29)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ni_boards, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %64

40:                                               ; preds = %28
  %41 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %42 = call i64 @pnp_activate_dev(%struct.pnp_dev* %41)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %46 = call i32 @pnp_device_detach(%struct.pnp_dev* %45)
  %47 = load i32, i32* @EAGAIN, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %77

49:                                               ; preds = %40
  %50 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %51 = call i32 @pnp_port_valid(%struct.pnp_dev* %50, i32 0)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %55 = call i32 @pnp_irq_valid(%struct.pnp_dev* %54, i32 0)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %53, %49
  %58 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %59 = call i32 @pnp_device_detach(%struct.pnp_dev* %58)
  %60 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %77

63:                                               ; preds = %53
  br label %67

64:                                               ; preds = %32, %27
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %5, align 4
  br label %6

67:                                               ; preds = %63, %6
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @n_ni_boards, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load i32, i32* @ENODEV, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %77

74:                                               ; preds = %67
  %75 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %76 = load %struct.pnp_dev**, %struct.pnp_dev*** %3, align 8
  store %struct.pnp_dev* %75, %struct.pnp_dev** %76, align 8
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %74, %71, %57, %44
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local %struct.pnp_dev* @pnp_find_dev(i32*, i32, i32, i32*) #1

declare dso_local i32 @ISAPNP_VENDOR(i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @ISAPNP_FUNCTION(i32) #1

declare dso_local i64 @pnp_device_attach(%struct.pnp_dev*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i64 @pnp_activate_dev(%struct.pnp_dev*) #1

declare dso_local i32 @pnp_device_detach(%struct.pnp_dev*) #1

declare dso_local i32 @pnp_port_valid(%struct.pnp_dev*, i32) #1

declare dso_local i32 @pnp_irq_valid(%struct.pnp_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
