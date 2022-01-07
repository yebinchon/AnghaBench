; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_ec.c_acpi_ec_transaction_unlocked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_ec.c_acpi_ec_transaction_unlocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_ec = type { i32, %struct.transaction*, i32 }
%struct.transaction = type { i64 }

@EC_FLAGS_MSI = common dso_local global i64 0, align 8
@ACPI_EC_MSI_UDELAY = common dso_local global i32 0, align 4
@ACPI_EC_COMMAND_QUERY = common dso_local global i64 0, align 8
@EC_FLAGS_QUERY_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_ec*, %struct.transaction*)* @acpi_ec_transaction_unlocked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_ec_transaction_unlocked(%struct.acpi_ec* %0, %struct.transaction* %1) #0 {
  %3 = alloca %struct.acpi_ec*, align 8
  %4 = alloca %struct.transaction*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.acpi_ec* %0, %struct.acpi_ec** %3, align 8
  store %struct.transaction* %1, %struct.transaction** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load i64, i64* @EC_FLAGS_MSI, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* @ACPI_EC_MSI_UDELAY, align 4
  %11 = call i32 @udelay(i32 %10)
  br label %12

12:                                               ; preds = %9, %2
  %13 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %14 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %13, i32 0, i32 0
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.transaction*, %struct.transaction** %4, align 8
  %18 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %19 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %18, i32 0, i32 1
  store %struct.transaction* %17, %struct.transaction** %19, align 8
  %20 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %21 = call i32 @start_transaction(%struct.acpi_ec* %20)
  %22 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %23 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %22, i32 0, i32 1
  %24 = load %struct.transaction*, %struct.transaction** %23, align 8
  %25 = getelementptr inbounds %struct.transaction, %struct.transaction* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ACPI_EC_COMMAND_QUERY, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %12
  %30 = load i32, i32* @EC_FLAGS_QUERY_PENDING, align 4
  %31 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %32 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %31, i32 0, i32 2
  %33 = call i32 @clear_bit(i32 %30, i32* %32)
  br label %34

34:                                               ; preds = %29, %12
  %35 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %36 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %35, i32 0, i32 0
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  %39 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %40 = call i32 @ec_poll(%struct.acpi_ec* %39)
  store i32 %40, i32* %6, align 4
  %41 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %42 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %41, i32 0, i32 0
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @spin_lock_irqsave(i32* %42, i64 %43)
  %45 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %46 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %45, i32 0, i32 1
  store %struct.transaction* null, %struct.transaction** %46, align 8
  %47 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %48 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %47, i32 0, i32 0
  %49 = load i64, i64* %5, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @start_transaction(%struct.acpi_ec*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ec_poll(%struct.acpi_ec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
