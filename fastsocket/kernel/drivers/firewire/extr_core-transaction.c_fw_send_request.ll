; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_core-transaction.c_fw_send_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_core-transaction.c_fw_send_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_card = type { i32, i64, %struct.TYPE_4__*, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 (%struct.fw_card*, %struct.TYPE_5__*)* }
%struct.TYPE_5__ = type { i32 }
%struct.fw_transaction = type { i32, i32, %struct.TYPE_5__, i32, i8*, i32 (%struct.fw_card.0*, i32, i32*, i32, i8*)* }
%struct.fw_card.0 = type opaque

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@RCODE_SEND_ERROR = common dso_local global i32 0, align 4
@transmit_complete_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fw_send_request(%struct.fw_card* %0, %struct.fw_transaction* %1, i32 %2, i32 %3, i32 %4, i32 %5, i64 %6, i8* %7, i64 %8, i32 (%struct.fw_card*, i32, i32*, i32, i8*)* %9, i8* %10) #0 {
  %12 = alloca %struct.fw_card*, align 8
  %13 = alloca %struct.fw_transaction*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32 (%struct.fw_card*, i32, i32*, i32, i8*)*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  store %struct.fw_card* %0, %struct.fw_card** %12, align 8
  store %struct.fw_transaction* %1, %struct.fw_transaction** %13, align 8
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i64 %6, i64* %18, align 8
  store i8* %7, i8** %19, align 8
  store i64 %8, i64* %20, align 8
  store i32 (%struct.fw_card*, i32, i32*, i32, i8*)* %9, i32 (%struct.fw_card*, i32, i32*, i32, i8*)** %21, align 8
  store i8* %10, i8** %22, align 8
  %25 = load %struct.fw_card*, %struct.fw_card** %12, align 8
  %26 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %25, i32 0, i32 6
  %27 = load i64, i64* @jiffies, align 8
  %28 = load i32, i32* @HZ, align 4
  %29 = call i64 @DIV_ROUND_UP(i32 %28, i32 10)
  %30 = add nsw i64 %27, %29
  %31 = call i32 @mod_timer(i32* %26, i64 %30)
  %32 = load %struct.fw_card*, %struct.fw_card** %12, align 8
  %33 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %32, i32 0, i32 3
  %34 = load i64, i64* %23, align 8
  %35 = call i32 @spin_lock_irqsave(i32* %33, i64 %34)
  %36 = load %struct.fw_card*, %struct.fw_card** %12, align 8
  %37 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %24, align 4
  %39 = load %struct.fw_card*, %struct.fw_card** %12, align 8
  %40 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %24, align 4
  %43 = zext i32 %42 to i64
  %44 = shl i64 1, %43
  %45 = and i64 %41, %44
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %11
  %48 = load %struct.fw_card*, %struct.fw_card** %12, align 8
  %49 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %48, i32 0, i32 3
  %50 = load i64, i64* %23, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  %52 = load i32 (%struct.fw_card*, i32, i32*, i32, i8*)*, i32 (%struct.fw_card*, i32, i32*, i32, i8*)** %21, align 8
  %53 = load %struct.fw_card*, %struct.fw_card** %12, align 8
  %54 = load i32, i32* @RCODE_SEND_ERROR, align 4
  %55 = load i8*, i8** %22, align 8
  %56 = call i32 %52(%struct.fw_card* %53, i32 %54, i32* null, i32 0, i8* %55)
  br label %123

57:                                               ; preds = %11
  %58 = load %struct.fw_card*, %struct.fw_card** %12, align 8
  %59 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  %62 = and i32 %61, 63
  %63 = load %struct.fw_card*, %struct.fw_card** %12, align 8
  %64 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* %24, align 4
  %66 = zext i32 %65 to i64
  %67 = shl i64 1, %66
  %68 = load %struct.fw_card*, %struct.fw_card** %12, align 8
  %69 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = or i64 %70, %67
  store i64 %71, i64* %69, align 8
  %72 = load i32, i32* %15, align 4
  %73 = load %struct.fw_transaction*, %struct.fw_transaction** %13, align 8
  %74 = getelementptr inbounds %struct.fw_transaction, %struct.fw_transaction* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* %24, align 4
  %76 = load %struct.fw_transaction*, %struct.fw_transaction** %13, align 8
  %77 = getelementptr inbounds %struct.fw_transaction, %struct.fw_transaction* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load i32 (%struct.fw_card*, i32, i32*, i32, i8*)*, i32 (%struct.fw_card*, i32, i32*, i32, i8*)** %21, align 8
  %79 = bitcast i32 (%struct.fw_card*, i32, i32*, i32, i8*)* %78 to i32 (%struct.fw_card.0*, i32, i32*, i32, i8*)*
  %80 = load %struct.fw_transaction*, %struct.fw_transaction** %13, align 8
  %81 = getelementptr inbounds %struct.fw_transaction, %struct.fw_transaction* %80, i32 0, i32 5
  store i32 (%struct.fw_card.0*, i32, i32*, i32, i8*)* %79, i32 (%struct.fw_card.0*, i32, i32*, i32, i8*)** %81, align 8
  %82 = load i8*, i8** %22, align 8
  %83 = load %struct.fw_transaction*, %struct.fw_transaction** %13, align 8
  %84 = getelementptr inbounds %struct.fw_transaction, %struct.fw_transaction* %83, i32 0, i32 4
  store i8* %82, i8** %84, align 8
  %85 = load %struct.fw_transaction*, %struct.fw_transaction** %13, align 8
  %86 = getelementptr inbounds %struct.fw_transaction, %struct.fw_transaction* %85, i32 0, i32 2
  %87 = load i32, i32* %14, align 4
  %88 = load %struct.fw_transaction*, %struct.fw_transaction** %13, align 8
  %89 = getelementptr inbounds %struct.fw_transaction, %struct.fw_transaction* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %15, align 4
  %92 = load %struct.fw_card*, %struct.fw_card** %12, align 8
  %93 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %16, align 4
  %96 = load i32, i32* %17, align 4
  %97 = load i64, i64* %18, align 8
  %98 = load i8*, i8** %19, align 8
  %99 = load i64, i64* %20, align 8
  %100 = call i32 @fw_fill_request(%struct.TYPE_5__* %86, i32 %87, i32 %90, i32 %91, i32 %94, i32 %95, i32 %96, i64 %97, i8* %98, i64 %99)
  %101 = load i32, i32* @transmit_complete_callback, align 4
  %102 = load %struct.fw_transaction*, %struct.fw_transaction** %13, align 8
  %103 = getelementptr inbounds %struct.fw_transaction, %struct.fw_transaction* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  store i32 %101, i32* %104, align 8
  %105 = load %struct.fw_transaction*, %struct.fw_transaction** %13, align 8
  %106 = getelementptr inbounds %struct.fw_transaction, %struct.fw_transaction* %105, i32 0, i32 3
  %107 = load %struct.fw_card*, %struct.fw_card** %12, align 8
  %108 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %107, i32 0, i32 4
  %109 = call i32 @list_add_tail(i32* %106, i32* %108)
  %110 = load %struct.fw_card*, %struct.fw_card** %12, align 8
  %111 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %110, i32 0, i32 3
  %112 = load i64, i64* %23, align 8
  %113 = call i32 @spin_unlock_irqrestore(i32* %111, i64 %112)
  %114 = load %struct.fw_card*, %struct.fw_card** %12, align 8
  %115 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %114, i32 0, i32 2
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32 (%struct.fw_card*, %struct.TYPE_5__*)*, i32 (%struct.fw_card*, %struct.TYPE_5__*)** %117, align 8
  %119 = load %struct.fw_card*, %struct.fw_card** %12, align 8
  %120 = load %struct.fw_transaction*, %struct.fw_transaction** %13, align 8
  %121 = getelementptr inbounds %struct.fw_transaction, %struct.fw_transaction* %120, i32 0, i32 2
  %122 = call i32 %118(%struct.fw_card* %119, %struct.TYPE_5__* %121)
  br label %123

123:                                              ; preds = %57, %47
  ret void
}

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @fw_fill_request(%struct.TYPE_5__*, i32, i32, i32, i32, i32, i32, i64, i8*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
