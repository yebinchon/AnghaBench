; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_ipw2100_verify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_ipw2100_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw2100_priv = type { i32 }

@IPW_REG_DOA_DEBUG_AREA_START = common dso_local global i32 0, align 4
@IPW_REG_DOA_DEBUG_AREA_END = common dso_local global i32 0, align 4
@IPW_DATA_DOA_DEBUG_VALUE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@IPW_REG_DOMAIN_1_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw2100_priv*)* @ipw2100_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw2100_verify(%struct.ipw2100_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipw2100_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ipw2100_priv* %0, %struct.ipw2100_priv** %3, align 8
  store i32 1985229328, i32* %7, align 4
  store i32 -19088744, i32* %8, align 4
  %9 = load i32, i32* @IPW_REG_DOA_DEBUG_AREA_START, align 4
  store i32 %9, i32* %6, align 4
  br label %10

10:                                               ; preds = %27, %1
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @IPW_REG_DOA_DEBUG_AREA_END, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %32

14:                                               ; preds = %10
  %15 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %16 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @read_register(i32 %17, i32 %18, i32* %4)
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @IPW_DATA_DOA_DEBUG_VALUE, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %14
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %78

26:                                               ; preds = %14
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = add i64 %29, 4
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %6, align 4
  br label %10

32:                                               ; preds = %10
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %72, %32
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 5
  br i1 %35, label %36, label %75

36:                                               ; preds = %33
  %37 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %38 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @IPW_REG_DOMAIN_1_OFFSET, align 4
  %41 = add nsw i32 %40, 50
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @write_register(i32 %39, i32 %41, i32 %42)
  %44 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %45 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @IPW_REG_DOMAIN_1_OFFSET, align 4
  %48 = add nsw i32 %47, 54
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @write_register(i32 %46, i32 %48, i32 %49)
  %51 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %52 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @IPW_REG_DOMAIN_1_OFFSET, align 4
  %55 = add nsw i32 %54, 50
  %56 = call i32 @read_register(i32 %53, i32 %55, i32* %4)
  %57 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %58 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @IPW_REG_DOMAIN_1_OFFSET, align 4
  %61 = add nsw i32 %60, 54
  %62 = call i32 @read_register(i32 %59, i32 %61, i32* %5)
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %36
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  store i32 0, i32* %2, align 4
  br label %78

71:                                               ; preds = %66, %36
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %6, align 4
  br label %33

75:                                               ; preds = %33
  %76 = load i32, i32* @EIO, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %75, %70, %23
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @read_register(i32, i32, i32*) #1

declare dso_local i32 @write_register(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
