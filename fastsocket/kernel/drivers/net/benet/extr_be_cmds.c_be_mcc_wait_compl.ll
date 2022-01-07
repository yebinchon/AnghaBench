; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_mcc_wait_compl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_mcc_wait_compl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32, %struct.TYPE_4__*, %struct.be_mcc_obj }
%struct.TYPE_4__ = type { i32 }
%struct.be_mcc_obj = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"FW not responding\0A\00", align 1
@mcc_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.be_adapter*)* @be_mcc_wait_compl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_mcc_wait_compl(%struct.be_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.be_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.be_mcc_obj*, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %7, i32 0, i32 2
  store %struct.be_mcc_obj* %8, %struct.be_mcc_obj** %6, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %32, %1
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 120000
  br i1 %11, label %12, label %35

12:                                               ; preds = %9
  %13 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %14 = call i64 @be_error(%struct.be_adapter* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %50

19:                                               ; preds = %12
  %20 = call i32 (...) @local_bh_disable()
  %21 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %22 = call i32 @be_process_mcc(%struct.be_adapter* %21)
  store i32 %22, i32* %5, align 4
  %23 = call i32 (...) @local_bh_enable()
  %24 = load %struct.be_mcc_obj*, %struct.be_mcc_obj** %6, align 8
  %25 = getelementptr inbounds %struct.be_mcc_obj, %struct.be_mcc_obj* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = call i64 @atomic_read(i32* %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %35

30:                                               ; preds = %19
  %31 = call i32 @udelay(i32 100)
  br label %32

32:                                               ; preds = %30
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %9

35:                                               ; preds = %29, %9
  %36 = load i32, i32* %4, align 4
  %37 = icmp eq i32 %36, 120000
  br i1 %37, label %38, label %48

38:                                               ; preds = %35
  %39 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %40 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = call i32 @dev_err(i32* %42, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %45 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %50

48:                                               ; preds = %35
  %49 = load i32, i32* %5, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %48, %38, %16
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i64 @be_error(%struct.be_adapter*) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @be_process_mcc(%struct.be_adapter*) #1

declare dso_local i32 @local_bh_enable(...) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
