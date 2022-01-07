; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_eeprom.c_ipath_i2c_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_eeprom.c_ipath_i2c_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_chain_desc = type { i64 }
%struct.ipath_devdata = type { i32 }

@i2c_chains = common dso_local global %struct.i2c_chain_desc* null, align 8
@IPATH_NO_DEV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.i2c_chain_desc* (%struct.ipath_devdata*)* @ipath_i2c_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.i2c_chain_desc* @ipath_i2c_type(%struct.ipath_devdata* %0) #0 {
  %2 = alloca %struct.ipath_devdata*, align 8
  %3 = alloca i32, align 4
  store %struct.ipath_devdata* %0, %struct.ipath_devdata** %2, align 8
  %4 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %5 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = sub nsw i32 %6, 1
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp sge i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.i2c_chain_desc*, %struct.i2c_chain_desc** @i2c_chains, align 8
  %13 = call i32 @ARRAY_SIZE(%struct.i2c_chain_desc* %12)
  %14 = sub nsw i32 %13, 1
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  br label %63

17:                                               ; preds = %10, %1
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %38, %17
  %19 = load %struct.i2c_chain_desc*, %struct.i2c_chain_desc** @i2c_chains, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.i2c_chain_desc, %struct.i2c_chain_desc* %19, i64 %21
  %23 = getelementptr inbounds %struct.i2c_chain_desc, %struct.i2c_chain_desc* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @IPATH_NO_DEV, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %18
  %28 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %29 = load %struct.i2c_chain_desc*, %struct.i2c_chain_desc** @i2c_chains, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.i2c_chain_desc, %struct.i2c_chain_desc* %29, i64 %31
  %33 = getelementptr inbounds %struct.i2c_chain_desc, %struct.i2c_chain_desc* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @i2c_probe(%struct.ipath_devdata* %28, i64 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %27
  br label %41

38:                                               ; preds = %27
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %18

41:                                               ; preds = %37, %18
  %42 = load i32, i32* %3, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %46 = call i32 @eeprom_reset(%struct.ipath_devdata* %45)
  br label %47

47:                                               ; preds = %44, %41
  %48 = load %struct.i2c_chain_desc*, %struct.i2c_chain_desc** @i2c_chains, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.i2c_chain_desc, %struct.i2c_chain_desc* %48, i64 %50
  %52 = getelementptr inbounds %struct.i2c_chain_desc, %struct.i2c_chain_desc* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @IPATH_NO_DEV, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  store i32 -1, i32* %3, align 4
  br label %62

57:                                               ; preds = %47
  %58 = load i32, i32* %3, align 4
  %59 = add nsw i32 %58, 1
  %60 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %61 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %57, %56
  br label %63

63:                                               ; preds = %62, %16
  %64 = load i32, i32* %3, align 4
  %65 = icmp sge i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load %struct.i2c_chain_desc*, %struct.i2c_chain_desc** @i2c_chains, align 8
  %68 = load i32, i32* %3, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.i2c_chain_desc, %struct.i2c_chain_desc* %67, i64 %69
  br label %72

71:                                               ; preds = %63
  br label %72

72:                                               ; preds = %71, %66
  %73 = phi %struct.i2c_chain_desc* [ %70, %66 ], [ null, %71 ]
  ret %struct.i2c_chain_desc* %73
}

declare dso_local i32 @ARRAY_SIZE(%struct.i2c_chain_desc*) #1

declare dso_local i32 @i2c_probe(%struct.ipath_devdata*, i64) #1

declare dso_local i32 @eeprom_reset(%struct.ipath_devdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
