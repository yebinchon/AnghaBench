; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_t3_hw.c_t3_write_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_t3_hw.c_t3_write_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.addr_val_pair = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t3_write_regs(%struct.adapter* %0, %struct.addr_val_pair* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca %struct.addr_val_pair*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store %struct.addr_val_pair* %1, %struct.addr_val_pair** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  br label %9

9:                                                ; preds = %13, %4
  %10 = load i32, i32* %7, align 4
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %7, align 4
  %12 = icmp ne i32 %10, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %9
  %14 = load %struct.adapter*, %struct.adapter** %5, align 8
  %15 = load %struct.addr_val_pair*, %struct.addr_val_pair** %6, align 8
  %16 = getelementptr inbounds %struct.addr_val_pair, %struct.addr_val_pair* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* %8, align 4
  %19 = zext i32 %18 to i64
  %20 = add nsw i64 %17, %19
  %21 = load %struct.addr_val_pair*, %struct.addr_val_pair** %6, align 8
  %22 = getelementptr inbounds %struct.addr_val_pair, %struct.addr_val_pair* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @t3_write_reg(%struct.adapter* %14, i64 %20, i32 %23)
  %25 = load %struct.addr_val_pair*, %struct.addr_val_pair** %6, align 8
  %26 = getelementptr inbounds %struct.addr_val_pair, %struct.addr_val_pair* %25, i32 1
  store %struct.addr_val_pair* %26, %struct.addr_val_pair** %6, align 8
  br label %9

27:                                               ; preds = %9
  ret void
}

declare dso_local i32 @t3_write_reg(%struct.adapter*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
