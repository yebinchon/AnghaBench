; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_ec.c_acpi_ec_burst_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_ec.c_acpi_ec_burst_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_ec = type { i32 }
%struct.transaction = type { i32, i32, i32*, i32*, i32 }

@ACPI_EC_BURST_DISABLE = common dso_local global i32 0, align 4
@ACPI_EC_FLAG_BURST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_ec*)* @acpi_ec_burst_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_ec_burst_disable(%struct.acpi_ec* %0) #0 {
  %2 = alloca %struct.acpi_ec*, align 8
  %3 = alloca %struct.transaction, align 8
  store %struct.acpi_ec* %0, %struct.acpi_ec** %2, align 8
  %4 = bitcast %struct.transaction* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 32, i1 false)
  %5 = getelementptr inbounds %struct.transaction, %struct.transaction* %3, i32 0, i32 4
  %6 = load i32, i32* @ACPI_EC_BURST_DISABLE, align 4
  store i32 %6, i32* %5, align 8
  %7 = load %struct.acpi_ec*, %struct.acpi_ec** %2, align 8
  %8 = call i32 @acpi_ec_read_status(%struct.acpi_ec* %7)
  %9 = load i32, i32* @ACPI_EC_FLAG_BURST, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.acpi_ec*, %struct.acpi_ec** %2, align 8
  %14 = call i32 @acpi_ec_transaction(%struct.acpi_ec* %13, %struct.transaction* %3)
  br label %16

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %15, %12
  %17 = phi i32 [ %14, %12 ], [ 0, %15 ]
  ret i32 %17
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @acpi_ec_read_status(%struct.acpi_ec*) #2

declare dso_local i32 @acpi_ec_transaction(%struct.acpi_ec*, %struct.transaction*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
