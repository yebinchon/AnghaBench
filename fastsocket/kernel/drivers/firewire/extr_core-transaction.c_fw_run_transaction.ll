; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_core-transaction.c_fw_run_transaction.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_core-transaction.c_fw_run_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_card = type { i32 }
%struct.transaction_callback_data = type { i32, i32, i8* }
%struct.fw_transaction = type { i32 }

@transaction_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fw_run_transaction(%struct.fw_card* %0, i32 %1, i32 %2, i32 %3, i32 %4, i64 %5, i8* %6, i64 %7) #0 {
  %9 = alloca %struct.fw_card*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.transaction_callback_data, align 8
  %18 = alloca %struct.fw_transaction, align 4
  store %struct.fw_card* %0, %struct.fw_card** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i64 %5, i64* %14, align 8
  store i8* %6, i8** %15, align 8
  store i64 %7, i64* %16, align 8
  %19 = getelementptr inbounds %struct.transaction_callback_data, %struct.transaction_callback_data* %17, i32 0, i32 1
  %20 = call i32 @init_completion(i32* %19)
  %21 = load i8*, i8** %15, align 8
  %22 = getelementptr inbounds %struct.transaction_callback_data, %struct.transaction_callback_data* %17, i32 0, i32 2
  store i8* %21, i8** %22, align 8
  %23 = load %struct.fw_card*, %struct.fw_card** %9, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %13, align 4
  %28 = load i64, i64* %14, align 8
  %29 = load i8*, i8** %15, align 8
  %30 = load i64, i64* %16, align 8
  %31 = load i32, i32* @transaction_callback, align 4
  %32 = call i32 @fw_send_request(%struct.fw_card* %23, %struct.fw_transaction* %18, i32 %24, i32 %25, i32 %26, i32 %27, i64 %28, i8* %29, i64 %30, i32 %31, %struct.transaction_callback_data* %17)
  %33 = getelementptr inbounds %struct.transaction_callback_data, %struct.transaction_callback_data* %17, i32 0, i32 1
  %34 = call i32 @wait_for_completion(i32* %33)
  %35 = getelementptr inbounds %struct.transaction_callback_data, %struct.transaction_callback_data* %17, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  ret i32 %36
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @fw_send_request(%struct.fw_card*, %struct.fw_transaction*, i32, i32, i32, i32, i64, i8*, i64, i32, %struct.transaction_callback_data*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
