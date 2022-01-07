; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/apei/extr_apei-base.c_apei_resources_sub.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/apei/extr_apei-base.c_apei_resources_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apei_resources = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @apei_resources_sub(%struct.apei_resources* %0, %struct.apei_resources* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.apei_resources*, align 8
  %5 = alloca %struct.apei_resources*, align 8
  %6 = alloca i32, align 4
  store %struct.apei_resources* %0, %struct.apei_resources** %4, align 8
  store %struct.apei_resources* %1, %struct.apei_resources** %5, align 8
  %7 = load %struct.apei_resources*, %struct.apei_resources** %4, align 8
  %8 = getelementptr inbounds %struct.apei_resources, %struct.apei_resources* %7, i32 0, i32 1
  %9 = load %struct.apei_resources*, %struct.apei_resources** %5, align 8
  %10 = getelementptr inbounds %struct.apei_resources, %struct.apei_resources* %9, i32 0, i32 1
  %11 = call i32 @apei_res_sub(i32* %8, i32* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %22

16:                                               ; preds = %2
  %17 = load %struct.apei_resources*, %struct.apei_resources** %4, align 8
  %18 = getelementptr inbounds %struct.apei_resources, %struct.apei_resources* %17, i32 0, i32 0
  %19 = load %struct.apei_resources*, %struct.apei_resources** %5, align 8
  %20 = getelementptr inbounds %struct.apei_resources, %struct.apei_resources* %19, i32 0, i32 0
  %21 = call i32 @apei_res_sub(i32* %18, i32* %20)
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %16, %14
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @apei_res_sub(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
