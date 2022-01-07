; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_ec.c_make_acpi_ec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_ec.c_make_acpi_ec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_ec = type { i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@EC_FLAGS_QUERY_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.acpi_ec* ()* @make_acpi_ec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.acpi_ec* @make_acpi_ec() #0 {
  %1 = alloca %struct.acpi_ec*, align 8
  %2 = alloca %struct.acpi_ec*, align 8
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call %struct.acpi_ec* @kzalloc(i32 20, i32 %3)
  store %struct.acpi_ec* %4, %struct.acpi_ec** %2, align 8
  %5 = load %struct.acpi_ec*, %struct.acpi_ec** %2, align 8
  %6 = icmp ne %struct.acpi_ec* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.acpi_ec* null, %struct.acpi_ec** %1, align 8
  br label %26

8:                                                ; preds = %0
  %9 = load i32, i32* @EC_FLAGS_QUERY_PENDING, align 4
  %10 = shl i32 1, %9
  %11 = load %struct.acpi_ec*, %struct.acpi_ec** %2, align 8
  %12 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load %struct.acpi_ec*, %struct.acpi_ec** %2, align 8
  %14 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %13, i32 0, i32 4
  %15 = call i32 @mutex_init(i32* %14)
  %16 = load %struct.acpi_ec*, %struct.acpi_ec** %2, align 8
  %17 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %16, i32 0, i32 3
  %18 = call i32 @init_waitqueue_head(i32* %17)
  %19 = load %struct.acpi_ec*, %struct.acpi_ec** %2, align 8
  %20 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %19, i32 0, i32 2
  %21 = call i32 @INIT_LIST_HEAD(i32* %20)
  %22 = load %struct.acpi_ec*, %struct.acpi_ec** %2, align 8
  %23 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %22, i32 0, i32 1
  %24 = call i32 @spin_lock_init(i32* %23)
  %25 = load %struct.acpi_ec*, %struct.acpi_ec** %2, align 8
  store %struct.acpi_ec* %25, %struct.acpi_ec** %1, align 8
  br label %26

26:                                               ; preds = %8, %7
  %27 = load %struct.acpi_ec*, %struct.acpi_ec** %1, align 8
  ret %struct.acpi_ec* %27
}

declare dso_local %struct.acpi_ec* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
