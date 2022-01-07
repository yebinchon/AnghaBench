; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ips.c_ips_allocatescbs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ips.c_ips_allocatescbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_11__*, %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_11__*, i8*, %struct.TYPE_10__, i8* }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_13__ = type { i64, i64, i32* }

@.str = private unnamed_addr constant [17 x i8] c"ips_allocatescbs\00", align 1
@IPS_MAX_SG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @ips_allocatescbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ips_allocatescbs(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_13__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %9 = call i32 @METHOD_TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 1)
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 40
  %18 = trunc i64 %17 to i32
  %19 = call i8* @pci_alloc_consistent(i32 %12, i32 %18, i8** %7)
  %20 = bitcast i8* %19 to %struct.TYPE_11__*
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 2
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** %22, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %26 = icmp eq %struct.TYPE_11__* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %160

28:                                               ; preds = %1
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %33 = call i32 @IPS_SGLIST_SIZE(%struct.TYPE_12__* %32)
  %34 = load i32, i32* @IPS_MAX_SG, align 4
  %35 = mul nsw i32 %33, %34
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = mul nsw i32 %35, %38
  %40 = call i8* @pci_alloc_consistent(i32 %31, i32 %39, i8** %8)
  %41 = bitcast i8* %40 to i32*
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 2
  store i32* %41, i32** %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %61

46:                                               ; preds = %28
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = mul i64 %53, 40
  %55 = trunc i64 %54 to i32
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = call i32 @pci_free_consistent(i32 %49, i32 %55, %struct.TYPE_11__* %58, i8* %59)
  store i32 0, i32* %2, align 4
  br label %160

61:                                               ; preds = %28
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %63, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = mul i64 %68, 40
  %70 = trunc i64 %69 to i32
  %71 = call i32 @memset(%struct.TYPE_11__* %64, i32 0, i32 %70)
  store i32 0, i32* %6, align 4
  br label %72

72:                                               ; preds = %156, %61
  %73 = load i32, i32* %6, align 4
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %159

78:                                               ; preds = %72
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i64 %83
  store %struct.TYPE_11__* %84, %struct.TYPE_11__** %4, align 8
  %85 = load i8*, i8** %7, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = mul i64 40, %87
  %89 = getelementptr i8, i8* %85, i64 %88
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 3
  store i8* %89, i8** %91, align 8
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %93 = call i64 @IPS_USE_ENH_SGLIST(%struct.TYPE_12__* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %117

95:                                               ; preds = %78
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @IPS_MAX_SG, align 4
  %100 = mul nsw i32 %98, %99
  %101 = sext i32 %100 to i64
  %102 = add nsw i64 %97, %101
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 1
  store i64 %102, i64* %105, align 8
  %106 = load i8*, i8** %8, align 8
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %108 = call i32 @IPS_SGLIST_SIZE(%struct.TYPE_12__* %107)
  %109 = load i32, i32* @IPS_MAX_SG, align 4
  %110 = mul nsw i32 %108, %109
  %111 = load i32, i32* %6, align 4
  %112 = mul nsw i32 %110, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr i8, i8* %106, i64 %113
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 1
  store i8* %114, i8** %116, align 8
  br label %139

117:                                              ; preds = %78
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* @IPS_MAX_SG, align 4
  %122 = mul nsw i32 %120, %121
  %123 = sext i32 %122 to i64
  %124 = add nsw i64 %119, %123
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  store i64 %124, i64* %127, align 8
  %128 = load i8*, i8** %8, align 8
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %130 = call i32 @IPS_SGLIST_SIZE(%struct.TYPE_12__* %129)
  %131 = load i32, i32* @IPS_MAX_SG, align 4
  %132 = mul nsw i32 %130, %131
  %133 = load i32, i32* %6, align 4
  %134 = mul nsw i32 %132, %133
  %135 = sext i32 %134 to i64
  %136 = getelementptr i8, i8* %128, i64 %135
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 1
  store i8* %136, i8** %138, align 8
  br label %139

139:                                              ; preds = %117, %95
  %140 = load i32, i32* %6, align 4
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = sub nsw i32 %143, 1
  %145 = icmp slt i32 %140, %144
  br i1 %145, label %146, label %155

146:                                              ; preds = %139
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %148, align 8
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 0
  store %struct.TYPE_11__* %149, %struct.TYPE_11__** %151, align 8
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 1
  store %struct.TYPE_11__* %152, %struct.TYPE_11__** %154, align 8
  br label %155

155:                                              ; preds = %146, %139
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %6, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %6, align 4
  br label %72

159:                                              ; preds = %72
  store i32 1, i32* %2, align 4
  br label %160

160:                                              ; preds = %159, %46, %27
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local i32 @METHOD_TRACE(i8*, i32) #1

declare dso_local i8* @pci_alloc_consistent(i32, i32, i8**) #1

declare dso_local i32 @IPS_SGLIST_SIZE(%struct.TYPE_12__*) #1

declare dso_local i32 @pci_free_consistent(i32, i32, %struct.TYPE_11__*, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i64 @IPS_USE_ENH_SGLIST(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
