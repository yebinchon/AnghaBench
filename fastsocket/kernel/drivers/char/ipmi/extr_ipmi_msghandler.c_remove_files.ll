; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_msghandler.c_remove_files.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_msghandler.c_remove_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bmc_device = type { i32, %struct.TYPE_4__*, i64, i32, %struct.TYPE_3__, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bmc_device*)* @remove_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_files(%struct.bmc_device* %0) #0 {
  %2 = alloca %struct.bmc_device*, align 8
  store %struct.bmc_device* %0, %struct.bmc_device** %2, align 8
  %3 = load %struct.bmc_device*, %struct.bmc_device** %2, align 8
  %4 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %3, i32 0, i32 1
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = icmp ne %struct.TYPE_4__* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %91

8:                                                ; preds = %1
  %9 = load %struct.bmc_device*, %struct.bmc_device** %2, align 8
  %10 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.bmc_device*, %struct.bmc_device** %2, align 8
  %14 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %13, i32 0, i32 12
  %15 = call i32 @device_remove_file(i32* %12, i32* %14)
  %16 = load %struct.bmc_device*, %struct.bmc_device** %2, align 8
  %17 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.bmc_device*, %struct.bmc_device** %2, align 8
  %21 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %20, i32 0, i32 11
  %22 = call i32 @device_remove_file(i32* %19, i32* %21)
  %23 = load %struct.bmc_device*, %struct.bmc_device** %2, align 8
  %24 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.bmc_device*, %struct.bmc_device** %2, align 8
  %28 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %27, i32 0, i32 10
  %29 = call i32 @device_remove_file(i32* %26, i32* %28)
  %30 = load %struct.bmc_device*, %struct.bmc_device** %2, align 8
  %31 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.bmc_device*, %struct.bmc_device** %2, align 8
  %35 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %34, i32 0, i32 9
  %36 = call i32 @device_remove_file(i32* %33, i32* %35)
  %37 = load %struct.bmc_device*, %struct.bmc_device** %2, align 8
  %38 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load %struct.bmc_device*, %struct.bmc_device** %2, align 8
  %42 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %41, i32 0, i32 8
  %43 = call i32 @device_remove_file(i32* %40, i32* %42)
  %44 = load %struct.bmc_device*, %struct.bmc_device** %2, align 8
  %45 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load %struct.bmc_device*, %struct.bmc_device** %2, align 8
  %49 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %48, i32 0, i32 7
  %50 = call i32 @device_remove_file(i32* %47, i32* %49)
  %51 = load %struct.bmc_device*, %struct.bmc_device** %2, align 8
  %52 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load %struct.bmc_device*, %struct.bmc_device** %2, align 8
  %56 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %55, i32 0, i32 6
  %57 = call i32 @device_remove_file(i32* %54, i32* %56)
  %58 = load %struct.bmc_device*, %struct.bmc_device** %2, align 8
  %59 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load %struct.bmc_device*, %struct.bmc_device** %2, align 8
  %63 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %62, i32 0, i32 5
  %64 = call i32 @device_remove_file(i32* %61, i32* %63)
  %65 = load %struct.bmc_device*, %struct.bmc_device** %2, align 8
  %66 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %8
  %71 = load %struct.bmc_device*, %struct.bmc_device** %2, align 8
  %72 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %71, i32 0, i32 1
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load %struct.bmc_device*, %struct.bmc_device** %2, align 8
  %76 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %75, i32 0, i32 3
  %77 = call i32 @device_remove_file(i32* %74, i32* %76)
  br label %78

78:                                               ; preds = %70, %8
  %79 = load %struct.bmc_device*, %struct.bmc_device** %2, align 8
  %80 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %78
  %84 = load %struct.bmc_device*, %struct.bmc_device** %2, align 8
  %85 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %84, i32 0, i32 1
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load %struct.bmc_device*, %struct.bmc_device** %2, align 8
  %89 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %88, i32 0, i32 0
  %90 = call i32 @device_remove_file(i32* %87, i32* %89)
  br label %91

91:                                               ; preds = %7, %83, %78
  ret void
}

declare dso_local i32 @device_remove_file(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
