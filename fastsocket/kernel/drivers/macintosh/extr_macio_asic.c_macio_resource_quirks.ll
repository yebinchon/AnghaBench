; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_macio_asic.c_macio_resource_quirks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_macio_asic.c_macio_resource_quirks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32, i32 }
%struct.resource = type { i32, i32, i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"gc\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"radio\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"escc\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"ch-a\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"ch-b\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"media-bay\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"IDE\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"ATA\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"ide\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"ata\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, %struct.resource*, i32)* @macio_resource_quirks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macio_resource_quirks(%struct.device_node* %0, %struct.resource* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %5, align 8
  store %struct.resource* %1, %struct.resource** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.resource*, %struct.resource** %6, align 8
  %9 = getelementptr inbounds %struct.resource, %struct.resource* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @IORESOURCE_MEM, align 4
  %12 = and i32 %10, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %151

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %15
  %19 = load %struct.device_node*, %struct.device_node** %5, align 8
  %20 = getelementptr inbounds %struct.device_node, %struct.device_node* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @strcmp(i32 %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %18
  %25 = load %struct.resource*, %struct.resource** %6, align 8
  %26 = getelementptr inbounds %struct.resource, %struct.resource* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 131071
  %29 = load %struct.resource*, %struct.resource** %6, align 8
  %30 = getelementptr inbounds %struct.resource, %struct.resource* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %24, %18, %15
  %32 = load i32, i32* %7, align 4
  %33 = icmp sge i32 %32, 2
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load %struct.device_node*, %struct.device_node** %5, align 8
  %36 = getelementptr inbounds %struct.device_node, %struct.device_node* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @strcmp(i32 %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  store i32 1, i32* %4, align 4
  br label %151

41:                                               ; preds = %34, %31
  %42 = load %struct.resource*, %struct.resource** %6, align 8
  %43 = getelementptr inbounds %struct.resource, %struct.resource* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 126976
  %46 = icmp eq i32 %45, 32768
  br i1 %46, label %47, label %54

47:                                               ; preds = %41
  %48 = load %struct.resource*, %struct.resource** %6, align 8
  %49 = getelementptr inbounds %struct.resource, %struct.resource* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 255
  %52 = load %struct.resource*, %struct.resource** %6, align 8
  %53 = getelementptr inbounds %struct.resource, %struct.resource* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %47, %41
  %55 = load %struct.device_node*, %struct.device_node** %5, align 8
  %56 = getelementptr inbounds %struct.device_node, %struct.device_node* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @strcmp(i32 %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %54
  store i32 1, i32* %4, align 4
  br label %151

61:                                               ; preds = %54
  %62 = load i32, i32* %7, align 4
  %63 = icmp sge i32 %62, 3
  br i1 %63, label %64, label %77

64:                                               ; preds = %61
  %65 = load %struct.device_node*, %struct.device_node** %5, align 8
  %66 = getelementptr inbounds %struct.device_node, %struct.device_node* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @strcmp(i32 %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %64
  %71 = load %struct.device_node*, %struct.device_node** %5, align 8
  %72 = getelementptr inbounds %struct.device_node, %struct.device_node* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @strcmp(i32 %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %70, %64
  store i32 1, i32* %4, align 4
  br label %151

77:                                               ; preds = %70, %61
  %78 = load i32, i32* %7, align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %77
  %81 = load %struct.device_node*, %struct.device_node** %5, align 8
  %82 = getelementptr inbounds %struct.device_node, %struct.device_node* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @strcmp(i32 %83, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %80
  store i32 1, i32* %4, align 4
  br label %151

87:                                               ; preds = %80, %77
  %88 = load %struct.device_node*, %struct.device_node** %5, align 8
  %89 = getelementptr inbounds %struct.device_node, %struct.device_node* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @strcmp(i32 %90, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %111

93:                                               ; preds = %87
  %94 = load %struct.device_node*, %struct.device_node** %5, align 8
  %95 = getelementptr inbounds %struct.device_node, %struct.device_node* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @strcmp(i32 %96, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %111

99:                                               ; preds = %93
  %100 = load %struct.device_node*, %struct.device_node** %5, align 8
  %101 = getelementptr inbounds %struct.device_node, %struct.device_node* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @strcmp(i32 %102, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %99
  %106 = load %struct.device_node*, %struct.device_node** %5, align 8
  %107 = getelementptr inbounds %struct.device_node, %struct.device_node* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @strcmp(i32 %108, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %150, label %111

111:                                              ; preds = %105, %99, %93, %87
  %112 = load i32, i32* %7, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %130

114:                                              ; preds = %111
  %115 = load %struct.resource*, %struct.resource** %6, align 8
  %116 = getelementptr inbounds %struct.resource, %struct.resource* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.resource*, %struct.resource** %6, align 8
  %119 = getelementptr inbounds %struct.resource, %struct.resource* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = sub nsw i32 %117, %120
  %122 = icmp sgt i32 %121, 4095
  br i1 %122, label %123, label %130

123:                                              ; preds = %114
  %124 = load %struct.resource*, %struct.resource** %6, align 8
  %125 = getelementptr inbounds %struct.resource, %struct.resource* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, 4095
  %128 = load %struct.resource*, %struct.resource** %6, align 8
  %129 = getelementptr inbounds %struct.resource, %struct.resource* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 4
  br label %130

130:                                              ; preds = %123, %114, %111
  %131 = load i32, i32* %7, align 4
  %132 = icmp eq i32 %131, 1
  br i1 %132, label %133, label %149

133:                                              ; preds = %130
  %134 = load %struct.resource*, %struct.resource** %6, align 8
  %135 = getelementptr inbounds %struct.resource, %struct.resource* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.resource*, %struct.resource** %6, align 8
  %138 = getelementptr inbounds %struct.resource, %struct.resource* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = sub nsw i32 %136, %139
  %141 = icmp sgt i32 %140, 255
  br i1 %141, label %142, label %149

142:                                              ; preds = %133
  %143 = load %struct.resource*, %struct.resource** %6, align 8
  %144 = getelementptr inbounds %struct.resource, %struct.resource* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %145, 255
  %147 = load %struct.resource*, %struct.resource** %6, align 8
  %148 = getelementptr inbounds %struct.resource, %struct.resource* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 4
  br label %149

149:                                              ; preds = %142, %133, %130
  br label %150

150:                                              ; preds = %149, %105
  store i32 0, i32* %4, align 4
  br label %151

151:                                              ; preds = %150, %86, %76, %60, %40, %14
  %152 = load i32, i32* %4, align 4
  ret i32 %152
}

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
