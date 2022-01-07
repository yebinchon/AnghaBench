; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/aoe/extr_aoeblk.c_aoedisk_show_netif.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/aoe/extr_aoeblk.c_aoedisk_show_netif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.gendisk = type { %struct.aoedev* }
%struct.aoedev = type { i32, %struct.aoetgt** }
%struct.aoetgt = type { %struct.aoeif* }
%struct.aoeif = type { %struct.net_device* }
%struct.net_device = type { i32 }

@NAOEIFS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"none\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @aoedisk_show_netif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aoedisk_show_netif(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.gendisk*, align 8
  %9 = alloca %struct.aoedev*, align 8
  %10 = alloca [8 x %struct.net_device*], align 16
  %11 = alloca %struct.net_device**, align 8
  %12 = alloca %struct.net_device**, align 8
  %13 = alloca %struct.net_device**, align 8
  %14 = alloca %struct.aoetgt**, align 8
  %15 = alloca %struct.aoetgt**, align 8
  %16 = alloca %struct.aoeif*, align 8
  %17 = alloca %struct.aoeif*, align 8
  %18 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = call %struct.gendisk* @dev_to_disk(%struct.device* %19)
  store %struct.gendisk* %20, %struct.gendisk** %8, align 8
  %21 = load %struct.gendisk*, %struct.gendisk** %8, align 8
  %22 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %21, i32 0, i32 0
  %23 = load %struct.aoedev*, %struct.aoedev** %22, align 8
  store %struct.aoedev* %23, %struct.aoedev** %9, align 8
  %24 = getelementptr inbounds [8 x %struct.net_device*], [8 x %struct.net_device*]* %10, i64 0, i64 0
  %25 = call i32 @memset(%struct.net_device** %24, i32 0, i32 64)
  %26 = getelementptr inbounds [8 x %struct.net_device*], [8 x %struct.net_device*]* %10, i64 0, i64 0
  store %struct.net_device** %26, %struct.net_device*** %11, align 8
  %27 = load %struct.net_device**, %struct.net_device*** %11, align 8
  %28 = getelementptr inbounds [8 x %struct.net_device*], [8 x %struct.net_device*]* %10, i64 0, i64 0
  %29 = call i32 @ARRAY_SIZE(%struct.net_device** %28)
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.net_device*, %struct.net_device** %27, i64 %30
  store %struct.net_device** %31, %struct.net_device*** %13, align 8
  %32 = load %struct.aoedev*, %struct.aoedev** %9, align 8
  %33 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %32, i32 0, i32 1
  %34 = load %struct.aoetgt**, %struct.aoetgt*** %33, align 8
  store %struct.aoetgt** %34, %struct.aoetgt*** %14, align 8
  %35 = load %struct.aoetgt**, %struct.aoetgt*** %14, align 8
  %36 = load %struct.aoedev*, %struct.aoedev** %9, align 8
  %37 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.aoetgt*, %struct.aoetgt** %35, i64 %39
  store %struct.aoetgt** %40, %struct.aoetgt*** %15, align 8
  br label %41

41:                                               ; preds = %108, %3
  %42 = load %struct.aoetgt**, %struct.aoetgt*** %14, align 8
  %43 = load %struct.aoetgt**, %struct.aoetgt*** %15, align 8
  %44 = icmp ult %struct.aoetgt** %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load %struct.aoetgt**, %struct.aoetgt*** %14, align 8
  %47 = load %struct.aoetgt*, %struct.aoetgt** %46, align 8
  %48 = icmp ne %struct.aoetgt* %47, null
  br label %49

49:                                               ; preds = %45, %41
  %50 = phi i1 [ false, %41 ], [ %48, %45 ]
  br i1 %50, label %51, label %111

51:                                               ; preds = %49
  %52 = load %struct.aoetgt**, %struct.aoetgt*** %14, align 8
  %53 = load %struct.aoetgt*, %struct.aoetgt** %52, align 8
  %54 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %53, i32 0, i32 0
  %55 = load %struct.aoeif*, %struct.aoeif** %54, align 8
  store %struct.aoeif* %55, %struct.aoeif** %16, align 8
  %56 = load %struct.aoeif*, %struct.aoeif** %16, align 8
  %57 = load i32, i32* @NAOEIFS, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.aoeif, %struct.aoeif* %56, i64 %58
  store %struct.aoeif* %59, %struct.aoeif** %17, align 8
  br label %60

60:                                               ; preds = %104, %51
  %61 = load %struct.aoeif*, %struct.aoeif** %16, align 8
  %62 = load %struct.aoeif*, %struct.aoeif** %17, align 8
  %63 = icmp ult %struct.aoeif* %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load %struct.aoeif*, %struct.aoeif** %16, align 8
  %66 = getelementptr inbounds %struct.aoeif, %struct.aoeif* %65, i32 0, i32 0
  %67 = load %struct.net_device*, %struct.net_device** %66, align 8
  %68 = icmp ne %struct.net_device* %67, null
  br label %69

69:                                               ; preds = %64, %60
  %70 = phi i1 [ false, %60 ], [ %68, %64 ]
  br i1 %70, label %71, label %107

71:                                               ; preds = %69
  %72 = getelementptr inbounds [8 x %struct.net_device*], [8 x %struct.net_device*]* %10, i64 0, i64 0
  store %struct.net_device** %72, %struct.net_device*** %12, align 8
  br label %73

73:                                               ; preds = %86, %71
  %74 = load %struct.net_device**, %struct.net_device*** %12, align 8
  %75 = load %struct.net_device**, %struct.net_device*** %11, align 8
  %76 = icmp ult %struct.net_device** %74, %75
  br i1 %76, label %77, label %89

77:                                               ; preds = %73
  %78 = load %struct.net_device**, %struct.net_device*** %12, align 8
  %79 = load %struct.net_device*, %struct.net_device** %78, align 8
  %80 = load %struct.aoeif*, %struct.aoeif** %16, align 8
  %81 = getelementptr inbounds %struct.aoeif, %struct.aoeif* %80, i32 0, i32 0
  %82 = load %struct.net_device*, %struct.net_device** %81, align 8
  %83 = icmp eq %struct.net_device* %79, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  br label %89

85:                                               ; preds = %77
  br label %86

86:                                               ; preds = %85
  %87 = load %struct.net_device**, %struct.net_device*** %12, align 8
  %88 = getelementptr inbounds %struct.net_device*, %struct.net_device** %87, i32 1
  store %struct.net_device** %88, %struct.net_device*** %12, align 8
  br label %73

89:                                               ; preds = %84, %73
  %90 = load %struct.net_device**, %struct.net_device*** %12, align 8
  %91 = load %struct.net_device**, %struct.net_device*** %11, align 8
  %92 = icmp eq %struct.net_device** %90, %91
  br i1 %92, label %93, label %103

93:                                               ; preds = %89
  %94 = load %struct.net_device**, %struct.net_device*** %11, align 8
  %95 = load %struct.net_device**, %struct.net_device*** %13, align 8
  %96 = icmp ne %struct.net_device** %94, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %93
  %98 = load %struct.aoeif*, %struct.aoeif** %16, align 8
  %99 = getelementptr inbounds %struct.aoeif, %struct.aoeif* %98, i32 0, i32 0
  %100 = load %struct.net_device*, %struct.net_device** %99, align 8
  %101 = load %struct.net_device**, %struct.net_device*** %11, align 8
  %102 = getelementptr inbounds %struct.net_device*, %struct.net_device** %101, i32 1
  store %struct.net_device** %102, %struct.net_device*** %11, align 8
  store %struct.net_device* %100, %struct.net_device** %101, align 8
  br label %103

103:                                              ; preds = %97, %93, %89
  br label %104

104:                                              ; preds = %103
  %105 = load %struct.aoeif*, %struct.aoeif** %16, align 8
  %106 = getelementptr inbounds %struct.aoeif, %struct.aoeif* %105, i32 1
  store %struct.aoeif* %106, %struct.aoeif** %16, align 8
  br label %60

107:                                              ; preds = %69
  br label %108

108:                                              ; preds = %107
  %109 = load %struct.aoetgt**, %struct.aoetgt*** %14, align 8
  %110 = getelementptr inbounds %struct.aoetgt*, %struct.aoetgt** %109, i32 1
  store %struct.aoetgt** %110, %struct.aoetgt*** %14, align 8
  br label %41

111:                                              ; preds = %49
  %112 = load %struct.net_device**, %struct.net_device*** %11, align 8
  store %struct.net_device** %112, %struct.net_device*** %13, align 8
  %113 = getelementptr inbounds [8 x %struct.net_device*], [8 x %struct.net_device*]* %10, i64 0, i64 0
  store %struct.net_device** %113, %struct.net_device*** %11, align 8
  %114 = load %struct.net_device**, %struct.net_device*** %11, align 8
  %115 = load %struct.net_device*, %struct.net_device** %114, align 8
  %116 = icmp eq %struct.net_device* %115, null
  br i1 %116, label %117, label %121

117:                                              ; preds = %111
  %118 = load i8*, i8** %7, align 8
  %119 = load i64, i64* @PAGE_SIZE, align 8
  %120 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %118, i64 %119, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %120, i32* %4, align 4
  br label %171

121:                                              ; preds = %111
  %122 = load i8*, i8** %7, align 8
  store i8* %122, i8** %18, align 8
  br label %123

123:                                              ; preds = %149, %121
  %124 = load %struct.net_device**, %struct.net_device*** %11, align 8
  %125 = load %struct.net_device**, %struct.net_device*** %13, align 8
  %126 = icmp ult %struct.net_device** %124, %125
  br i1 %126, label %127, label %152

127:                                              ; preds = %123
  %128 = load i8*, i8** %18, align 8
  %129 = load i64, i64* @PAGE_SIZE, align 8
  %130 = load i8*, i8** %18, align 8
  %131 = load i8*, i8** %7, align 8
  %132 = ptrtoint i8* %130 to i64
  %133 = ptrtoint i8* %131 to i64
  %134 = sub i64 %132, %133
  %135 = sub nsw i64 %129, %134
  %136 = load i8*, i8** %18, align 8
  %137 = load i8*, i8** %7, align 8
  %138 = icmp eq i8* %136, %137
  %139 = zext i1 %138 to i64
  %140 = select i1 %138, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %141 = load %struct.net_device**, %struct.net_device*** %11, align 8
  %142 = load %struct.net_device*, %struct.net_device** %141, align 8
  %143 = getelementptr inbounds %struct.net_device, %struct.net_device* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %128, i64 %135, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %140, i32 %144)
  %146 = load i8*, i8** %18, align 8
  %147 = sext i32 %145 to i64
  %148 = getelementptr inbounds i8, i8* %146, i64 %147
  store i8* %148, i8** %18, align 8
  br label %149

149:                                              ; preds = %127
  %150 = load %struct.net_device**, %struct.net_device*** %11, align 8
  %151 = getelementptr inbounds %struct.net_device*, %struct.net_device** %150, i32 1
  store %struct.net_device** %151, %struct.net_device*** %11, align 8
  br label %123

152:                                              ; preds = %123
  %153 = load i8*, i8** %18, align 8
  %154 = load i64, i64* @PAGE_SIZE, align 8
  %155 = load i8*, i8** %18, align 8
  %156 = load i8*, i8** %7, align 8
  %157 = ptrtoint i8* %155 to i64
  %158 = ptrtoint i8* %156 to i64
  %159 = sub i64 %157, %158
  %160 = sub nsw i64 %154, %159
  %161 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %153, i64 %160, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %162 = load i8*, i8** %18, align 8
  %163 = sext i32 %161 to i64
  %164 = getelementptr inbounds i8, i8* %162, i64 %163
  store i8* %164, i8** %18, align 8
  %165 = load i8*, i8** %18, align 8
  %166 = load i8*, i8** %7, align 8
  %167 = ptrtoint i8* %165 to i64
  %168 = ptrtoint i8* %166 to i64
  %169 = sub i64 %167, %168
  %170 = trunc i64 %169 to i32
  store i32 %170, i32* %4, align 4
  br label %171

171:                                              ; preds = %152, %117
  %172 = load i32, i32* %4, align 4
  ret i32 %172
}

declare dso_local %struct.gendisk* @dev_to_disk(%struct.device*) #1

declare dso_local i32 @memset(%struct.net_device**, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.net_device**) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
