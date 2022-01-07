; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-debugifc.c_pvr2_debugifc_print_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-debugifc.c_pvr2_debugifc_print_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_hdw = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Driver hardware description: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Driver state info:\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pvr2_debugifc_print_info(%struct.pvr2_hdw* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.pvr2_hdw*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pvr2_hdw* %0, %struct.pvr2_hdw** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %12 = call i32 @pvr2_hdw_get_desc(%struct.pvr2_hdw* %11)
  %13 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %9, i32 %10, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %7, align 4
  %16 = add nsw i32 %15, %14
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %6, align 4
  %19 = sub i32 %18, %17
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i8*, i8** %5, align 8
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  store i8* %23, i8** %5, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %24, i32 %25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, %27
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %6, align 4
  %32 = sub i32 %31, %30
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i8*, i8** %5, align 8
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  store i8* %36, i8** %5, align 8
  %37 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @pvr2_hdw_state_report(%struct.pvr2_hdw* %37, i8* %38, i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %6, align 4
  %46 = sub i32 %45, %44
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i8*, i8** %5, align 8
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  store i8* %50, i8** %5, align 8
  %51 = load i32, i32* %7, align 4
  ret i32 %51
}

declare dso_local i32 @scnprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @pvr2_hdw_get_desc(%struct.pvr2_hdw*) #1

declare dso_local i32 @pvr2_hdw_state_report(%struct.pvr2_hdw*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
