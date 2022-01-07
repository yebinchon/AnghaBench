; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_rq_create_all.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_rq_create_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxnet3_adapter = type { i32, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"%s: failed to create rx queue%i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmxnet3_adapter*)* @vmxnet3_rq_create_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmxnet3_rq_create_all(%struct.vmxnet3_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vmxnet3_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vmxnet3_adapter* %0, %struct.vmxnet3_adapter** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %37, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %40

12:                                               ; preds = %6
  %13 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %20 = call i32 @vmxnet3_rq_create(i32* %18, %struct.vmxnet3_adapter* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %12
  %25 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %26 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %30 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @dev_err(i32* %28, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34)
  br label %42

36:                                               ; preds = %12
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %6

40:                                               ; preds = %6
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %46

42:                                               ; preds = %24
  %43 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %44 = call i32 @vmxnet3_rq_destroy_all(%struct.vmxnet3_adapter* %43)
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %42, %40
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @vmxnet3_rq_create(i32*, %struct.vmxnet3_adapter*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @vmxnet3_rq_destroy_all(%struct.vmxnet3_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
