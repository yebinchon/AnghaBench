; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_dump_nic_error_log.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_dump_nic_error_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i64, %struct.TYPE_8__, i32, %struct.TYPE_7__*, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 (i32)* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@UCODE_INIT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"Not valid error log pointer 0x%08X for %s uCode\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Init\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"RT\00", align 1
@ERROR_START_OFFSET = common dso_local global i32 0, align 4
@ERROR_ELEM_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Start IWL Error Log Dump:\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Status: 0x%08lX, count: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [77 x i8] c"Desc                                  Time       data1      data2      line\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"%-28s (0x%04X) %010u 0x%08X 0x%08X %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"pc      blink1  blink2  ilink1  ilink2  hcmd\0A\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"0x%05X 0x%05X 0x%05X 0x%05X 0x%05X 0x%05X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @il4965_dump_nic_error_log(%struct.il_priv* %0) #0 {
  %2 = alloca %struct.il_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %2, align 8
  %16 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %17 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @UCODE_INIT, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %23 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %22, i32 0, i32 5
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @le32_to_cpu(i32 %25)
  store i32 %26, i32* %8, align 4
  br label %33

27:                                               ; preds = %1
  %28 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %29 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @le32_to_cpu(i32 %31)
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %27, %21
  %34 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %35 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %34, i32 0, i32 3
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32 (i32)*, i32 (i32)** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 %38(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %33
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %45 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @UCODE_INIT, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %51 = call i32 (i8*, ...) @IL_ERR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %43, i8* %50)
  br label %156

52:                                               ; preds = %33
  %53 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @il_read_targ_mem(%struct.il_priv* %53, i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* @ERROR_START_OFFSET, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @ERROR_ELEM_SIZE, align 4
  %59 = mul nsw i32 %57, %58
  %60 = icmp sle i32 %56, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %52
  %62 = call i32 (i8*, ...) @IL_ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %63 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %64 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 (i8*, ...) @IL_ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %61, %52
  %69 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = add i64 %71, 4
  %73 = trunc i64 %72 to i32
  %74 = call i32 @il_read_targ_mem(%struct.il_priv* %69, i32 %73)
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %77 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  store i32 %75, i32* %78, align 8
  %79 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = add i64 %81, 8
  %83 = trunc i64 %82 to i32
  %84 = call i32 @il_read_targ_mem(%struct.il_priv* %79, i32 %83)
  store i32 %84, i32* %14, align 4
  %85 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = add i64 %87, 12
  %89 = trunc i64 %88 to i32
  %90 = call i32 @il_read_targ_mem(%struct.il_priv* %85, i32 %89)
  store i32 %90, i32* %10, align 4
  %91 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = add i64 %93, 16
  %95 = trunc i64 %94 to i32
  %96 = call i32 @il_read_targ_mem(%struct.il_priv* %91, i32 %95)
  store i32 %96, i32* %11, align 4
  %97 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = add i64 %99, 20
  %101 = trunc i64 %100 to i32
  %102 = call i32 @il_read_targ_mem(%struct.il_priv* %97, i32 %101)
  store i32 %102, i32* %12, align 4
  %103 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = add i64 %105, 24
  %107 = trunc i64 %106 to i32
  %108 = call i32 @il_read_targ_mem(%struct.il_priv* %103, i32 %107)
  store i32 %108, i32* %13, align 4
  %109 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %110 = load i32, i32* %8, align 4
  %111 = sext i32 %110 to i64
  %112 = add i64 %111, 28
  %113 = trunc i64 %112 to i32
  %114 = call i32 @il_read_targ_mem(%struct.il_priv* %109, i32 %113)
  store i32 %114, i32* %9, align 4
  %115 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %116 = load i32, i32* %8, align 4
  %117 = sext i32 %116 to i64
  %118 = add i64 %117, 32
  %119 = trunc i64 %118 to i32
  %120 = call i32 @il_read_targ_mem(%struct.il_priv* %115, i32 %119)
  store i32 %120, i32* %3, align 4
  %121 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %122 = load i32, i32* %8, align 4
  %123 = sext i32 %122 to i64
  %124 = add i64 %123, 36
  %125 = trunc i64 %124 to i32
  %126 = call i32 @il_read_targ_mem(%struct.il_priv* %121, i32 %125)
  store i32 %126, i32* %4, align 4
  %127 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = add i64 %129, 44
  %131 = trunc i64 %130 to i32
  %132 = call i32 @il_read_targ_mem(%struct.il_priv* %127, i32 %131)
  store i32 %132, i32* %6, align 4
  %133 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %134 = load i32, i32* %8, align 4
  %135 = sext i32 %134 to i64
  %136 = add i64 %135, 88
  %137 = trunc i64 %136 to i32
  %138 = call i32 @il_read_targ_mem(%struct.il_priv* %133, i32 %137)
  store i32 %138, i32* %15, align 4
  %139 = call i32 (i8*, ...) @IL_ERR(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.5, i64 0, i64 0))
  %140 = load i32, i32* %5, align 4
  %141 = call i32 @il4965_desc_lookup(i32 %140)
  %142 = load i32, i32* %5, align 4
  %143 = load i32, i32* %6, align 4
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* %3, align 4
  %146 = load i32, i32* %4, align 4
  %147 = call i32 (i8*, ...) @IL_ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %141, i32 %142, i32 %143, i32 %144, i32 %145, i32 %146)
  %148 = call i32 (i8*, ...) @IL_ERR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0))
  %149 = load i32, i32* %14, align 4
  %150 = load i32, i32* %10, align 4
  %151 = load i32, i32* %11, align 4
  %152 = load i32, i32* %12, align 4
  %153 = load i32, i32* %13, align 4
  %154 = load i32, i32* %15, align 4
  %155 = call i32 (i8*, ...) @IL_ERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0), i32 %149, i32 %150, i32 %151, i32 %152, i32 %153, i32 %154)
  br label %156

156:                                              ; preds = %68, %42
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @IL_ERR(i8*, ...) #1

declare dso_local i32 @il_read_targ_mem(%struct.il_priv*, i32) #1

declare dso_local i32 @il4965_desc_lookup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
