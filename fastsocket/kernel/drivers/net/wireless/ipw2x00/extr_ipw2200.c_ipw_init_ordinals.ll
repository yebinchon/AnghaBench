; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_init_ordinals.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_init_ordinals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { i32, i32, i32, i8*, i8*, i8* }

@IPW_ORDINALS_TABLE_LOWER = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [36 x i8] c"table 0 offset at 0x%08x, len = %i\0A\00", align 1
@IPW_ORDINALS_TABLE_1 = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"table 1 offset at 0x%08x, len = %i\0A\00", align 1
@IPW_ORDINALS_TABLE_2 = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"table 2 offset at 0x%08x, len = %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipw_priv*)* @ipw_init_ordinals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipw_init_ordinals(%struct.ipw_priv* %0) #0 {
  %2 = alloca %struct.ipw_priv*, align 8
  store %struct.ipw_priv* %0, %struct.ipw_priv** %2, align 8
  %3 = load i8*, i8** @IPW_ORDINALS_TABLE_LOWER, align 8
  %4 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %5 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %4, i32 0, i32 5
  store i8* %3, i8** %5, align 8
  %6 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %7 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %8 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %7, i32 0, i32 5
  %9 = load i8*, i8** %8, align 8
  %10 = call i8* @ipw_read32(%struct.ipw_priv* %6, i8* %9)
  %11 = ptrtoint i8* %10 to i32
  %12 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %13 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %15 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %14, i32 0, i32 5
  %16 = load i8*, i8** %15, align 8
  %17 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %18 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @IPW_DEBUG_ORD(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %16, i32 %19)
  %21 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %22 = load i8*, i8** @IPW_ORDINALS_TABLE_1, align 8
  %23 = call i8* @ipw_read32(%struct.ipw_priv* %21, i8* %22)
  %24 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %25 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %24, i32 0, i32 4
  store i8* %23, i8** %25, align 8
  %26 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %27 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %28 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %27, i32 0, i32 4
  %29 = load i8*, i8** %28, align 8
  %30 = call i8* @ipw_read_reg32(%struct.ipw_priv* %26, i8* %29)
  %31 = ptrtoint i8* %30 to i32
  %32 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %33 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %35 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %34, i32 0, i32 4
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %38 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @IPW_DEBUG_ORD(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %36, i32 %39)
  %41 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %42 = load i8*, i8** @IPW_ORDINALS_TABLE_2, align 8
  %43 = call i8* @ipw_read32(%struct.ipw_priv* %41, i8* %42)
  %44 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %45 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %44, i32 0, i32 3
  store i8* %43, i8** %45, align 8
  %46 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %47 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %48 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %47, i32 0, i32 3
  %49 = load i8*, i8** %48, align 8
  %50 = call i8* @ipw_read_reg32(%struct.ipw_priv* %46, i8* %49)
  %51 = ptrtoint i8* %50 to i32
  %52 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %53 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %55 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = and i32 %56, 65535
  store i32 %57, i32* %55, align 8
  %58 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %59 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %58, i32 0, i32 3
  %60 = load i8*, i8** %59, align 8
  %61 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %62 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @IPW_DEBUG_ORD(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %60, i32 %63)
  ret void
}

declare dso_local i8* @ipw_read32(%struct.ipw_priv*, i8*) #1

declare dso_local i32 @IPW_DEBUG_ORD(i8*, i8*, i32) #1

declare dso_local i8* @ipw_read_reg32(%struct.ipw_priv*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
