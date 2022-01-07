; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_tasklet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvfc_host = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.vio_dev = type { i32 }
%struct.ibmvfc_crq = type { i64 }
%struct.ibmvfc_async_crq = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ibmvfc_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmvfc_tasklet(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ibmvfc_host*, align 8
  %4 = alloca %struct.vio_dev*, align 8
  %5 = alloca %struct.ibmvfc_crq*, align 8
  %6 = alloca %struct.ibmvfc_async_crq*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.ibmvfc_host*
  store %struct.ibmvfc_host* %10, %struct.ibmvfc_host** %3, align 8
  %11 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %12 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.vio_dev* @to_vio_dev(i32 %13)
  store %struct.vio_dev* %14, %struct.vio_dev** %4, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %16 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @spin_lock_irqsave(i32 %19, i64 %20)
  br label %22

22:                                               ; preds = %80, %1
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  br i1 %25, label %26, label %81

26:                                               ; preds = %22
  br label %27

27:                                               ; preds = %31, %26
  %28 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %29 = call %struct.ibmvfc_async_crq* @ibmvfc_next_async_crq(%struct.ibmvfc_host* %28)
  store %struct.ibmvfc_async_crq* %29, %struct.ibmvfc_async_crq** %6, align 8
  %30 = icmp ne %struct.ibmvfc_async_crq* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load %struct.ibmvfc_async_crq*, %struct.ibmvfc_async_crq** %6, align 8
  %33 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %34 = call i32 @ibmvfc_handle_async(%struct.ibmvfc_async_crq* %32, %struct.ibmvfc_host* %33)
  %35 = call i32 (...) @mb()
  %36 = load %struct.ibmvfc_async_crq*, %struct.ibmvfc_async_crq** %6, align 8
  %37 = getelementptr inbounds %struct.ibmvfc_async_crq, %struct.ibmvfc_async_crq* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  br label %27

38:                                               ; preds = %27
  br label %39

39:                                               ; preds = %43, %38
  %40 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %41 = call %struct.ibmvfc_crq* @ibmvfc_next_crq(%struct.ibmvfc_host* %40)
  store %struct.ibmvfc_crq* %41, %struct.ibmvfc_crq** %5, align 8
  %42 = icmp ne %struct.ibmvfc_crq* %41, null
  br i1 %42, label %43, label %50

43:                                               ; preds = %39
  %44 = load %struct.ibmvfc_crq*, %struct.ibmvfc_crq** %5, align 8
  %45 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %46 = call i32 @ibmvfc_handle_crq(%struct.ibmvfc_crq* %44, %struct.ibmvfc_host* %45)
  %47 = call i32 (...) @mb()
  %48 = load %struct.ibmvfc_crq*, %struct.ibmvfc_crq** %5, align 8
  %49 = getelementptr inbounds %struct.ibmvfc_crq, %struct.ibmvfc_crq* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  br label %39

50:                                               ; preds = %39
  %51 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %52 = call i32 @vio_enable_interrupts(%struct.vio_dev* %51)
  %53 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %54 = call %struct.ibmvfc_async_crq* @ibmvfc_next_async_crq(%struct.ibmvfc_host* %53)
  store %struct.ibmvfc_async_crq* %54, %struct.ibmvfc_async_crq** %6, align 8
  %55 = icmp ne %struct.ibmvfc_async_crq* %54, null
  br i1 %55, label %56, label %65

56:                                               ; preds = %50
  %57 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %58 = call i32 @vio_disable_interrupts(%struct.vio_dev* %57)
  %59 = load %struct.ibmvfc_async_crq*, %struct.ibmvfc_async_crq** %6, align 8
  %60 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %61 = call i32 @ibmvfc_handle_async(%struct.ibmvfc_async_crq* %59, %struct.ibmvfc_host* %60)
  %62 = call i32 (...) @mb()
  %63 = load %struct.ibmvfc_async_crq*, %struct.ibmvfc_async_crq** %6, align 8
  %64 = getelementptr inbounds %struct.ibmvfc_async_crq, %struct.ibmvfc_async_crq* %63, i32 0, i32 0
  store i64 0, i64* %64, align 8
  br label %80

65:                                               ; preds = %50
  %66 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %67 = call %struct.ibmvfc_crq* @ibmvfc_next_crq(%struct.ibmvfc_host* %66)
  store %struct.ibmvfc_crq* %67, %struct.ibmvfc_crq** %5, align 8
  %68 = icmp ne %struct.ibmvfc_crq* %67, null
  br i1 %68, label %69, label %78

69:                                               ; preds = %65
  %70 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %71 = call i32 @vio_disable_interrupts(%struct.vio_dev* %70)
  %72 = load %struct.ibmvfc_crq*, %struct.ibmvfc_crq** %5, align 8
  %73 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %74 = call i32 @ibmvfc_handle_crq(%struct.ibmvfc_crq* %72, %struct.ibmvfc_host* %73)
  %75 = call i32 (...) @mb()
  %76 = load %struct.ibmvfc_crq*, %struct.ibmvfc_crq** %5, align 8
  %77 = getelementptr inbounds %struct.ibmvfc_crq, %struct.ibmvfc_crq* %76, i32 0, i32 0
  store i64 0, i64* %77, align 8
  br label %79

78:                                               ; preds = %65
  store i32 1, i32* %8, align 4
  br label %79

79:                                               ; preds = %78, %69
  br label %80

80:                                               ; preds = %79, %56
  br label %22

81:                                               ; preds = %22
  %82 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %83 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %82, i32 0, i32 0
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i64, i64* %7, align 8
  %88 = call i32 @spin_unlock_irqrestore(i32 %86, i64 %87)
  ret void
}

declare dso_local %struct.vio_dev* @to_vio_dev(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local %struct.ibmvfc_async_crq* @ibmvfc_next_async_crq(%struct.ibmvfc_host*) #1

declare dso_local i32 @ibmvfc_handle_async(%struct.ibmvfc_async_crq*, %struct.ibmvfc_host*) #1

declare dso_local i32 @mb(...) #1

declare dso_local %struct.ibmvfc_crq* @ibmvfc_next_crq(%struct.ibmvfc_host*) #1

declare dso_local i32 @ibmvfc_handle_crq(%struct.ibmvfc_crq*, %struct.ibmvfc_host*) #1

declare dso_local i32 @vio_enable_interrupts(%struct.vio_dev*) #1

declare dso_local i32 @vio_disable_interrupts(%struct.vio_dev*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
