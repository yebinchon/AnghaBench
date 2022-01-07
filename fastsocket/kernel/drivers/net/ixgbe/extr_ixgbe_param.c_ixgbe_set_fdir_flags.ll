; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_param.c_ixgbe_set_fdir_flags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_param.c_ixgbe_set_fdir_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32 }

@IXGBE_FLAG_FDIR_HASH_CAPABLE = common dso_local global i32 0, align 4
@IXGBE_FLAG_FDIR_PERFECT_CAPABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Flow Director disabled\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_set_fdir_flags(%struct.ixgbe_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.ixgbe_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %6, i32 0, i32 0
  store i32* %7, i32** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = load i32, i32* %9, align 4
  %11 = or i32 %10, %8
  store i32 %11, i32* %9, align 4
  %12 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %13 = call i32 @ixgbe_adapter_fdir_capable(%struct.ixgbe_adapter* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @IXGBE_FLAG_FDIR_HASH_CAPABLE, align 4
  %17 = load i32, i32* @IXGBE_FLAG_FDIR_PERFECT_CAPABLE, align 4
  %18 = or i32 %16, %17
  %19 = xor i32 %18, -1
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, %19
  store i32 %22, i32* %20, align 4
  %23 = call i32 @e_dev_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %15, %2
  ret void
}

declare dso_local i32 @ixgbe_adapter_fdir_capable(%struct.ixgbe_adapter*) #1

declare dso_local i32 @e_dev_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
