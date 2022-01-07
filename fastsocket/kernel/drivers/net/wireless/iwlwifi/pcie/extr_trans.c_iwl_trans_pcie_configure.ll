; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_trans.c_iwl_trans_pcie_configure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_trans.c_iwl_trans_pcie_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_trans_config = type { i64, i32, i32, i32, i64, i32, i32, i32 }
%struct.iwl_trans_pcie = type { i64, i32, i32, i32, i8*, i64, i32, i32, i32 }

@MAX_NO_RECLAIM_CMDS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_trans*, %struct.iwl_trans_config*)* @iwl_trans_pcie_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_trans_pcie_configure(%struct.iwl_trans* %0, %struct.iwl_trans_config* %1) #0 {
  %3 = alloca %struct.iwl_trans*, align 8
  %4 = alloca %struct.iwl_trans_config*, align 8
  %5 = alloca %struct.iwl_trans_pcie*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %3, align 8
  store %struct.iwl_trans_config* %1, %struct.iwl_trans_config** %4, align 8
  %6 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %7 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %6)
  store %struct.iwl_trans_pcie* %7, %struct.iwl_trans_pcie** %5, align 8
  %8 = load %struct.iwl_trans_config*, %struct.iwl_trans_config** %4, align 8
  %9 = getelementptr inbounds %struct.iwl_trans_config, %struct.iwl_trans_config* %8, i32 0, i32 7
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %12 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %11, i32 0, i32 8
  store i32 %10, i32* %12, align 8
  %13 = load %struct.iwl_trans_config*, %struct.iwl_trans_config** %4, align 8
  %14 = getelementptr inbounds %struct.iwl_trans_config, %struct.iwl_trans_config* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %17 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %16, i32 0, i32 7
  store i32 %15, i32* %17, align 4
  %18 = load %struct.iwl_trans_config*, %struct.iwl_trans_config** %4, align 8
  %19 = getelementptr inbounds %struct.iwl_trans_config, %struct.iwl_trans_config* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MAX_NO_RECLAIM_CMDS, align 8
  %22 = icmp sgt i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i64 @WARN_ON(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %28 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  br label %35

29:                                               ; preds = %2
  %30 = load %struct.iwl_trans_config*, %struct.iwl_trans_config** %4, align 8
  %31 = getelementptr inbounds %struct.iwl_trans_config, %struct.iwl_trans_config* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %34 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  br label %35

35:                                               ; preds = %29, %26
  %36 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %37 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %35
  %41 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %42 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.iwl_trans_config*, %struct.iwl_trans_config** %4, align 8
  %45 = getelementptr inbounds %struct.iwl_trans_config, %struct.iwl_trans_config* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %48 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = mul i64 %49, 4
  %51 = trunc i64 %50 to i32
  %52 = call i32 @memcpy(i32 %43, i32 %46, i32 %51)
  br label %53

53:                                               ; preds = %40, %35
  %54 = load %struct.iwl_trans_config*, %struct.iwl_trans_config** %4, align 8
  %55 = getelementptr inbounds %struct.iwl_trans_config, %struct.iwl_trans_config* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %58 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %57, i32 0, i32 5
  store i64 %56, i64* %58, align 8
  %59 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %60 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %59, i32 0, i32 5
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %53
  %64 = call i8* @get_order(i32 8192)
  %65 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %66 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %65, i32 0, i32 4
  store i8* %64, i8** %66, align 8
  br label %71

67:                                               ; preds = %53
  %68 = call i8* @get_order(i32 4096)
  %69 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %70 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %69, i32 0, i32 4
  store i8* %68, i8** %70, align 8
  br label %71

71:                                               ; preds = %67, %63
  %72 = load %struct.iwl_trans_config*, %struct.iwl_trans_config** %4, align 8
  %73 = getelementptr inbounds %struct.iwl_trans_config, %struct.iwl_trans_config* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @msecs_to_jiffies(i32 %74)
  %76 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %77 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 8
  %78 = load %struct.iwl_trans_config*, %struct.iwl_trans_config** %4, align 8
  %79 = getelementptr inbounds %struct.iwl_trans_config, %struct.iwl_trans_config* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %82 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 4
  %83 = load %struct.iwl_trans_config*, %struct.iwl_trans_config** %4, align 8
  %84 = getelementptr inbounds %struct.iwl_trans_config, %struct.iwl_trans_config* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %87 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 8
  ret void
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i8* @get_order(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
