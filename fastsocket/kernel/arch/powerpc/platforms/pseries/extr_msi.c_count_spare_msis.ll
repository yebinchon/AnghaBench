; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_msi.c_count_spare_msis.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_msi.c_count_spare_msis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.msi_counts = type { i32, i32, i32, i32, %struct.device_node* }

@.str = private unnamed_addr constant [12 x i8] c"ibm,req#msi\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"ibm,req#msi-x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.device_node*, i8*)* @count_spare_msis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @count_spare_msis(%struct.device_node* %0, i8* %1) #0 {
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.msi_counts*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.msi_counts*
  store %struct.msi_counts* %9, %struct.msi_counts** %5, align 8
  %10 = load %struct.device_node*, %struct.device_node** %3, align 8
  %11 = load %struct.msi_counts*, %struct.msi_counts** %5, align 8
  %12 = getelementptr inbounds %struct.msi_counts, %struct.msi_counts* %11, i32 0, i32 4
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  %14 = icmp eq %struct.device_node* %10, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.msi_counts*, %struct.msi_counts** %5, align 8
  %17 = getelementptr inbounds %struct.msi_counts, %struct.msi_counts* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %7, align 4
  br label %38

19:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  %20 = load %struct.device_node*, %struct.device_node** %3, align 8
  %21 = call i32* @of_get_property(%struct.device_node* %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32* %21, i32** %6, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %24, %19
  %28 = load %struct.device_node*, %struct.device_node** %3, align 8
  %29 = call i32* @of_get_property(%struct.device_node* %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i32* %29, i32** %6, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load i32, i32* %7, align 4
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @max(i32 %33, i32 %35)
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %32, %27
  br label %38

38:                                               ; preds = %37, %15
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.msi_counts*, %struct.msi_counts** %5, align 8
  %41 = getelementptr inbounds %struct.msi_counts, %struct.msi_counts* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %38
  %45 = load %struct.msi_counts*, %struct.msi_counts** %5, align 8
  %46 = getelementptr inbounds %struct.msi_counts, %struct.msi_counts* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %7, align 4
  %49 = sub nsw i32 %47, %48
  %50 = load %struct.msi_counts*, %struct.msi_counts** %5, align 8
  %51 = getelementptr inbounds %struct.msi_counts, %struct.msi_counts* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, %49
  store i32 %53, i32* %51, align 4
  br label %66

54:                                               ; preds = %38
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.msi_counts*, %struct.msi_counts** %5, align 8
  %57 = getelementptr inbounds %struct.msi_counts, %struct.msi_counts* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp sgt i32 %55, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  %61 = load %struct.msi_counts*, %struct.msi_counts** %5, align 8
  %62 = getelementptr inbounds %struct.msi_counts, %struct.msi_counts* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %60, %54
  br label %66

66:                                               ; preds = %65, %44
  ret i8* null
}

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
