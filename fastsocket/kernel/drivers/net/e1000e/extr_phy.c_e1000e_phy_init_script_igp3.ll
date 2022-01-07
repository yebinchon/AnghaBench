; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_phy.c_e1000e_phy_init_script_igp3.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_phy.c_e1000e_phy_init_script_igp3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Running IGP 3 PHY init script\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000e_phy_init_script_igp3(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %3 = call i32 @e_dbg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %5 = call i32 @e1e_wphy(%struct.e1000_hw* %4, i32 12123, i32 36888)
  %6 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %7 = call i32 @e1e_wphy(%struct.e1000_hw* %6, i32 12114, i32 0)
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %9 = call i32 @e1e_wphy(%struct.e1000_hw* %8, i32 12209, i32 35620)
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %11 = call i32 @e1e_wphy(%struct.e1000_hw* %10, i32 12210, i32 63728)
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %13 = call i32 @e1e_wphy(%struct.e1000_hw* %12, i32 8208, i32 4272)
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %15 = call i32 @e1e_wphy(%struct.e1000_hw* %14, i32 8209, i32 0)
  %16 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %17 = call i32 @e1e_wphy(%struct.e1000_hw* %16, i32 8413, i32 9370)
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %19 = call i32 @e1e_wphy(%struct.e1000_hw* %18, i32 8414, i32 211)
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %21 = call i32 @e1e_wphy(%struct.e1000_hw* %20, i32 10420, i32 1230)
  %22 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %23 = call i32 @e1e_wphy(%struct.e1000_hw* %22, i32 12144, i32 10724)
  %24 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %25 = call i32 @e1e_wphy(%struct.e1000_hw* %24, i32 0, i32 320)
  %26 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %27 = call i32 @e1e_wphy(%struct.e1000_hw* %26, i32 7984, i32 5638)
  %28 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %29 = call i32 @e1e_wphy(%struct.e1000_hw* %28, i32 7985, i32 47124)
  %30 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %31 = call i32 @e1e_wphy(%struct.e1000_hw* %30, i32 7989, i32 42)
  %32 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %33 = call i32 @e1e_wphy(%struct.e1000_hw* %32, i32 7998, i32 103)
  %34 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %35 = call i32 @e1e_wphy(%struct.e1000_hw* %34, i32 8020, i32 101)
  %36 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %37 = call i32 @e1e_wphy(%struct.e1000_hw* %36, i32 8021, i32 42)
  %38 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %39 = call i32 @e1e_wphy(%struct.e1000_hw* %38, i32 8022, i32 42)
  %40 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %41 = call i32 @e1e_wphy(%struct.e1000_hw* %40, i32 8050, i32 16304)
  %42 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %43 = call i32 @e1e_wphy(%struct.e1000_hw* %42, i32 8054, i32 49407)
  %44 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %45 = call i32 @e1e_wphy(%struct.e1000_hw* %44, i32 8055, i32 7660)
  %46 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %47 = call i32 @e1e_wphy(%struct.e1000_hw* %46, i32 8056, i32 63983)
  %48 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %49 = call i32 @e1e_wphy(%struct.e1000_hw* %48, i32 8057, i32 528)
  %50 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %51 = call i32 @e1e_wphy(%struct.e1000_hw* %50, i32 6293, i32 3)
  %52 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %53 = call i32 @e1e_wphy(%struct.e1000_hw* %52, i32 6038, i32 8)
  %54 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %55 = call i32 @e1e_wphy(%struct.e1000_hw* %54, i32 6040, i32 53256)
  %56 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %57 = call i32 @e1e_wphy(%struct.e1000_hw* %56, i32 6296, i32 55576)
  %58 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %59 = call i32 @e1e_wphy(%struct.e1000_hw* %58, i32 6266, i32 2048)
  %60 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %61 = call i32 @e1e_wphy(%struct.e1000_hw* %60, i32 25, i32 141)
  %62 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %63 = call i32 @e1e_wphy(%struct.e1000_hw* %62, i32 27, i32 8320)
  %64 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %65 = call i32 @e1e_wphy(%struct.e1000_hw* %64, i32 20, i32 69)
  %66 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %67 = call i32 @e1e_wphy(%struct.e1000_hw* %66, i32 0, i32 4928)
  ret i32 0
}

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i32 @e1e_wphy(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
