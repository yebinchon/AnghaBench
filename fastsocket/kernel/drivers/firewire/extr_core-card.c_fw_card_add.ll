; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_core-card.c_fw_card_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_core-card.c_fw_card_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_card = type { i32, %struct.TYPE_2__*, i32, i8*, i8* }
%struct.TYPE_2__ = type { i32 (%struct.fw_card*, i8**, i32)* }

@card_mutex = common dso_local global i32 0, align 4
@config_rom_length = common dso_local global i32 0, align 4
@card_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fw_card_add(%struct.fw_card* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.fw_card*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  store %struct.fw_card* %0, %struct.fw_card** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = load %struct.fw_card*, %struct.fw_card** %5, align 8
  %13 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %12, i32 0, i32 4
  store i8* %11, i8** %13, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load %struct.fw_card*, %struct.fw_card** %5, align 8
  %16 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %15, i32 0, i32 3
  store i8* %14, i8** %16, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.fw_card*, %struct.fw_card** %5, align 8
  %19 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = call i32 @mutex_lock(i32* @card_mutex)
  %21 = load %struct.fw_card*, %struct.fw_card** %5, align 8
  %22 = call i8** @generate_config_rom(%struct.fw_card* %21)
  store i8** %22, i8*** %9, align 8
  %23 = load %struct.fw_card*, %struct.fw_card** %5, align 8
  %24 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.fw_card*, i8**, i32)*, i32 (%struct.fw_card*, i8**, i32)** %26, align 8
  %28 = load %struct.fw_card*, %struct.fw_card** %5, align 8
  %29 = load i8**, i8*** %9, align 8
  %30 = load i32, i32* @config_rom_length, align 4
  %31 = call i32 %27(%struct.fw_card* %28, i8** %29, i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %4
  %35 = load %struct.fw_card*, %struct.fw_card** %5, align 8
  %36 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %35, i32 0, i32 0
  %37 = call i32 @list_add_tail(i32* %36, i32* @card_list)
  br label %38

38:                                               ; preds = %34, %4
  %39 = call i32 @mutex_unlock(i32* @card_mutex)
  %40 = load i32, i32* %10, align 4
  ret i32 %40
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8** @generate_config_rom(%struct.fw_card*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
