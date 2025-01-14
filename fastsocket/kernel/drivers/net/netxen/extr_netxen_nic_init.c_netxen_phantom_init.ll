; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_init.c_netxen_phantom_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_init.c_netxen_phantom_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netxen_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CRB_CMDPEG_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"firmware init failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netxen_phantom_init(%struct.netxen_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.netxen_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 60, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %38

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %22, %11
  %13 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %14 = load i32, i32* @CRB_CMDPEG_STATE, align 4
  %15 = call i32 @NXRD32(%struct.netxen_adapter* %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %19 [
    i32 129, label %17
    i32 130, label %17
    i32 128, label %18
  ]

17:                                               ; preds = %12, %12
  store i32 0, i32* %3, align 4
  br label %38

18:                                               ; preds = %12
  br label %30

19:                                               ; preds = %12
  br label %20

20:                                               ; preds = %19
  %21 = call i32 @msleep(i32 500)
  br label %22

22:                                               ; preds = %20
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %12, label %26

26:                                               ; preds = %22
  %27 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %28 = load i32, i32* @CRB_CMDPEG_STATE, align 4
  %29 = call i32 @NXWR32(%struct.netxen_adapter* %27, i32 %28, i32 128)
  br label %30

30:                                               ; preds = %26, %18
  %31 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %32 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = call i32 @dev_warn(i32* %34, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %30, %17, %10
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @NXRD32(%struct.netxen_adapter*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @NXWR32(%struct.netxen_adapter*, i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
