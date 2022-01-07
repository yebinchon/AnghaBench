; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_main.c_iwl_eeprom_init_hw_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_main.c_iwl_eeprom_init_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { %struct.TYPE_4__, %struct.TYPE_3__*, %struct.iwl_nvm_data* }
%struct.TYPE_4__ = type { i32, i8* }
%struct.TYPE_3__ = type { i64, i32 }
%struct.iwl_nvm_data = type { i32, i32, i64, i64, i64 }

@.str = private unnamed_addr constant [27 x i8] c"Invalid 11n configuration\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Invalid device sku\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"Device SKU: 24GHz %s %s, 52GHz %s %s, 11.n %s %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"NOT\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"Valid Tx ant: 0x%X, Valid Rx ant: 0x%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_priv*)* @iwl_eeprom_init_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_eeprom_init_hw_params(%struct.iwl_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwl_priv*, align 8
  %4 = alloca %struct.iwl_nvm_data*, align 8
  %5 = alloca i8*, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %3, align 8
  %6 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %7 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %6, i32 0, i32 2
  %8 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %7, align 8
  store %struct.iwl_nvm_data* %8, %struct.iwl_nvm_data** %4, align 8
  %9 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %4, align 8
  %10 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %1
  %14 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %15 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %13
  %21 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %22 = call i32 @IWL_ERR(%struct.iwl_priv* %21, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %106

25:                                               ; preds = %13, %1
  %26 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %4, align 8
  %27 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %45, label %30

30:                                               ; preds = %25
  %31 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %4, align 8
  %32 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %30
  %36 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %4, align 8
  %37 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %42 = call i32 @IWL_ERR(%struct.iwl_priv* %41, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %106

45:                                               ; preds = %35, %30, %25
  store i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  %46 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %4, align 8
  %49 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %54 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %4, align 8
  %55 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %60 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %4, align 8
  %61 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %66 = call i32 (%struct.iwl_priv*, i8*, i8*, i8*, ...) @IWL_DEBUG_INFO(%struct.iwl_priv* %46, i8* %47, i8* %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %65, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %67 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %4, align 8
  %68 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @num_of_ant(i32 %69)
  %71 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %72 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  store i8* %70, i8** %73, align 8
  %74 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %75 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %74, i32 0, i32 1
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %45
  %81 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %82 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i32 1, i32* %83, align 8
  br label %93

84:                                               ; preds = %45
  %85 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %4, align 8
  %86 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i8* @num_of_ant(i32 %87)
  %89 = ptrtoint i8* %88 to i32
  %90 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %91 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  store i32 %89, i32* %92, align 8
  br label %93

93:                                               ; preds = %84, %80
  %94 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %95 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %4, align 8
  %96 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = inttoptr i64 %98 to i8*
  %100 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %4, align 8
  %101 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = sext i32 %102 to i64
  %104 = inttoptr i64 %103 to i8*
  %105 = call i32 (%struct.iwl_priv*, i8*, i8*, i8*, ...) @IWL_DEBUG_INFO(%struct.iwl_priv* %94, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i8* %99, i8* %104)
  store i32 0, i32* %2, align 4
  br label %106

106:                                              ; preds = %93, %40, %20
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32 @IWL_ERR(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_priv*, i8*, i8*, i8*, ...) #1

declare dso_local i8* @num_of_ant(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
