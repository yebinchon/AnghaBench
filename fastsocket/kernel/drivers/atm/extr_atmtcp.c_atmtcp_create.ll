; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_atmtcp.c_atmtcp_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_atmtcp.c_atmtcp_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_dev = type { %struct.atmtcp_dev_data*, %struct.TYPE_3__ }
%struct.atmtcp_dev_data = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DEV_LABEL = common dso_local global i32 0, align 4
@atmtcp_v_dev_ops = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@MAX_VPI_BITS = common dso_local global i32 0, align 4
@MAX_VCI_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.atm_dev**)* @atmtcp_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmtcp_create(i32 %0, i32 %1, %struct.atm_dev** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.atm_dev**, align 8
  %8 = alloca %struct.atmtcp_dev_data*, align 8
  %9 = alloca %struct.atm_dev*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.atm_dev** %2, %struct.atm_dev*** %7, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.atmtcp_dev_data* @kmalloc(i32 4, i32 %10)
  store %struct.atmtcp_dev_data* %11, %struct.atmtcp_dev_data** %8, align 8
  %12 = load %struct.atmtcp_dev_data*, %struct.atmtcp_dev_data** %8, align 8
  %13 = icmp ne %struct.atmtcp_dev_data* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %61

17:                                               ; preds = %3
  %18 = load i32, i32* @DEV_LABEL, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call %struct.atm_dev* @atm_dev_register(i32 %18, i32* @atmtcp_v_dev_ops, i32 %19, i32* null)
  store %struct.atm_dev* %20, %struct.atm_dev** %9, align 8
  %21 = load %struct.atm_dev*, %struct.atm_dev** %9, align 8
  %22 = icmp ne %struct.atm_dev* %21, null
  br i1 %22, label %36, label %23

23:                                               ; preds = %17
  %24 = load %struct.atmtcp_dev_data*, %struct.atmtcp_dev_data** %8, align 8
  %25 = call i32 @kfree(%struct.atmtcp_dev_data* %24)
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  br label %34

31:                                               ; preds = %23
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  br label %34

34:                                               ; preds = %31, %28
  %35 = phi i32 [ %30, %28 ], [ %33, %31 ]
  store i32 %35, i32* %4, align 4
  br label %61

36:                                               ; preds = %17
  %37 = load i32, i32* @MAX_VPI_BITS, align 4
  %38 = load %struct.atm_dev*, %struct.atm_dev** %9, align 8
  %39 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* @MAX_VCI_BITS, align 4
  %42 = load %struct.atm_dev*, %struct.atm_dev** %9, align 8
  %43 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 8
  %45 = load %struct.atmtcp_dev_data*, %struct.atmtcp_dev_data** %8, align 8
  %46 = load %struct.atm_dev*, %struct.atm_dev** %9, align 8
  %47 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %46, i32 0, i32 0
  store %struct.atmtcp_dev_data* %45, %struct.atmtcp_dev_data** %47, align 8
  %48 = load %struct.atm_dev*, %struct.atm_dev** %9, align 8
  %49 = call %struct.TYPE_4__* @PRIV(%struct.atm_dev* %48)
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  store i32* null, i32** %50, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.atm_dev*, %struct.atm_dev** %9, align 8
  %53 = call %struct.TYPE_4__* @PRIV(%struct.atm_dev* %52)
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 8
  %55 = load %struct.atm_dev**, %struct.atm_dev*** %7, align 8
  %56 = icmp ne %struct.atm_dev** %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %36
  %58 = load %struct.atm_dev*, %struct.atm_dev** %9, align 8
  %59 = load %struct.atm_dev**, %struct.atm_dev*** %7, align 8
  store %struct.atm_dev* %58, %struct.atm_dev** %59, align 8
  br label %60

60:                                               ; preds = %57, %36
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %60, %34, %14
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.atmtcp_dev_data* @kmalloc(i32, i32) #1

declare dso_local %struct.atm_dev* @atm_dev_register(i32, i32*, i32, i32*) #1

declare dso_local i32 @kfree(%struct.atmtcp_dev_data*) #1

declare dso_local %struct.TYPE_4__* @PRIV(%struct.atm_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
