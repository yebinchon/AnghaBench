; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_evgpeblk.c_acpi_ev_delete_gpe_handlers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_evgpeblk.c_acpi_ev_delete_gpe_handlers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_gpe_xrupt_info = type { i32 }
%struct.acpi_gpe_block_info = type { i64, %struct.acpi_gpe_event_info* }
%struct.acpi_gpe_event_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@ev_delete_gpe_handlers = common dso_local global i32 0, align 4
@ACPI_GPE_REGISTER_WIDTH = common dso_local global i64 0, align 8
@ACPI_GPE_DISPATCH_MASK = common dso_local global i32 0, align 4
@ACPI_GPE_DISPATCH_HANDLER = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ev_delete_gpe_handlers(%struct.acpi_gpe_xrupt_info* %0, %struct.acpi_gpe_block_info* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_gpe_xrupt_info*, align 8
  %6 = alloca %struct.acpi_gpe_block_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.acpi_gpe_event_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.acpi_gpe_xrupt_info* %0, %struct.acpi_gpe_xrupt_info** %5, align 8
  store %struct.acpi_gpe_block_info* %1, %struct.acpi_gpe_block_info** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i32, i32* @ev_delete_gpe_handlers, align 4
  %12 = call i32 @ACPI_FUNCTION_TRACE(i32 %11)
  store i64 0, i64* %9, align 8
  br label %13

13:                                               ; preds = %61, %3
  %14 = load i64, i64* %9, align 8
  %15 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %6, align 8
  %16 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %14, %17
  br i1 %18, label %19, label %64

19:                                               ; preds = %13
  store i64 0, i64* %10, align 8
  br label %20

20:                                               ; preds = %57, %19
  %21 = load i64, i64* %10, align 8
  %22 = load i64, i64* @ACPI_GPE_REGISTER_WIDTH, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %60

24:                                               ; preds = %20
  %25 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %6, align 8
  %26 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %25, i32 0, i32 1
  %27 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %26, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* @ACPI_GPE_REGISTER_WIDTH, align 8
  %30 = mul nsw i64 %28, %29
  %31 = load i64, i64* %10, align 8
  %32 = add nsw i64 %30, %31
  %33 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %27, i64 %32
  store %struct.acpi_gpe_event_info* %33, %struct.acpi_gpe_event_info** %8, align 8
  %34 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %8, align 8
  %35 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @ACPI_GPE_DISPATCH_MASK, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* @ACPI_GPE_DISPATCH_HANDLER, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %56

41:                                               ; preds = %24
  %42 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %8, align 8
  %43 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @ACPI_FREE(i32* %45)
  %47 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %8, align 8
  %48 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32* null, i32** %49, align 8
  %50 = load i32, i32* @ACPI_GPE_DISPATCH_MASK, align 4
  %51 = xor i32 %50, -1
  %52 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %8, align 8
  %53 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %54, %51
  store i32 %55, i32* %53, align 8
  br label %56

56:                                               ; preds = %41, %24
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %10, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %10, align 8
  br label %20

60:                                               ; preds = %20
  br label %61

61:                                               ; preds = %60
  %62 = load i64, i64* %9, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %9, align 8
  br label %13

64:                                               ; preds = %13
  %65 = load i32, i32* @AE_OK, align 4
  %66 = call i32 @return_ACPI_STATUS(i32 %65)
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @ACPI_FREE(i32*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
