; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ll_temac_mdio.c_temac_mdio_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ll_temac_mdio.c_temac_mdio_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.temac_local = type { i32, i32, %struct.mii_bus*, i32 }
%struct.mii_bus = type { i8*, i32, i32, i32, i32, %struct.temac_local*, i32 }
%struct.device_node = type { i32 }
%struct.resource = type { i64 }

@.str = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@XTE_MC_OFFSET = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%.8llx\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Xilinx TEMAC MDIO\00", align 1
@temac_mdio_read = common dso_local global i32 0, align 4
@temac_mdio_write = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"MDIO bus registered;  MC:%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @temac_mdio_setup(%struct.temac_local* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.temac_local*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.mii_bus*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.resource, align 8
  store %struct.temac_local* %0, %struct.temac_local** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  store i32 63, i32* %8, align 4
  %12 = load %struct.device_node*, %struct.device_node** %5, align 8
  %13 = call i32* @of_get_property(%struct.device_node* %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %10)
  store i32* %13, i32** %7, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %33

16:                                               ; preds = %2
  %17 = load i32, i32* %10, align 4
  %18 = sext i32 %17 to i64
  %19 = icmp uge i64 %18, 4
  br i1 %19, label %20, label %33

20:                                               ; preds = %16
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %21, align 4
  %23 = sdiv i32 %22, 5000000
  %24 = sub nsw i32 %23, 1
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 1
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store i32 1, i32* %8, align 4
  br label %28

28:                                               ; preds = %27, %20
  %29 = load i32, i32* %8, align 4
  %30 = icmp sgt i32 %29, 63
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 63, i32* %8, align 4
  br label %32

32:                                               ; preds = %31, %28
  br label %33

33:                                               ; preds = %32, %16, %2
  %34 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %35 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %34, i32 0, i32 0
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %38 = load i32, i32* @XTE_MC_OFFSET, align 4
  %39 = load i32, i32* %8, align 4
  %40 = or i32 64, %39
  %41 = call i32 @temac_indirect_out32(%struct.temac_local* %37, i32 %38, i32 %40)
  %42 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %43 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %42, i32 0, i32 0
  %44 = call i32 @mutex_unlock(i32* %43)
  %45 = call %struct.mii_bus* (...) @mdiobus_alloc()
  store %struct.mii_bus* %45, %struct.mii_bus** %6, align 8
  %46 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %47 = icmp ne %struct.mii_bus* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %33
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %109

51:                                               ; preds = %33
  %52 = load %struct.device_node*, %struct.device_node** %5, align 8
  %53 = call i32 @of_address_to_resource(%struct.device_node* %52, i32 0, %struct.resource* %11)
  %54 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %55 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %58 = getelementptr inbounds %struct.resource, %struct.resource* %11, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @snprintf(i32 %56, i32 %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %59)
  %61 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %62 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %63 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %62, i32 0, i32 5
  store %struct.temac_local* %61, %struct.temac_local** %63, align 8
  %64 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %65 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %64, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8** %65, align 8
  %66 = load i32, i32* @temac_mdio_read, align 4
  %67 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %68 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @temac_mdio_write, align 4
  %70 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %71 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 8
  %72 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %73 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %76 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 4
  %77 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %78 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %81 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 8
  %82 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %83 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %84 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %83, i32 0, i32 2
  store %struct.mii_bus* %82, %struct.mii_bus** %84, align 8
  %85 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %86 = load %struct.device_node*, %struct.device_node** %5, align 8
  %87 = call i32 @of_mdiobus_register(%struct.mii_bus* %85, %struct.device_node* %86)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %51
  br label %105

91:                                               ; preds = %51
  %92 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %93 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %92, i32 0, i32 0
  %94 = call i32 @mutex_lock(i32* %93)
  %95 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %96 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %99 = load i32, i32* @XTE_MC_OFFSET, align 4
  %100 = call i32 @temac_indirect_in32(%struct.temac_local* %98, i32 %99)
  %101 = call i32 @dev_dbg(i32 %97, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %100)
  %102 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %103 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %102, i32 0, i32 0
  %104 = call i32 @mutex_unlock(i32* %103)
  store i32 0, i32* %3, align 4
  br label %109

105:                                              ; preds = %90
  %106 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %107 = call i32 @mdiobus_free(%struct.mii_bus* %106)
  %108 = load i32, i32* %9, align 4
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %105, %91, %48
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @temac_indirect_out32(%struct.temac_local*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.mii_bus* @mdiobus_alloc(...) #1

declare dso_local i32 @of_address_to_resource(%struct.device_node*, i32, %struct.resource*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i64) #1

declare dso_local i32 @of_mdiobus_register(%struct.mii_bus*, %struct.device_node*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @temac_indirect_in32(%struct.temac_local*, i32) #1

declare dso_local i32 @mdiobus_free(%struct.mii_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
