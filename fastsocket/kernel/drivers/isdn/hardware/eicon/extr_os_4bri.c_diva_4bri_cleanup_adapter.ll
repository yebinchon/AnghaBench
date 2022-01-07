; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_os_4bri.c_diva_4bri_cleanup_adapter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_os_4bri.c_diva_4bri_cleanup_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32*, %struct.TYPE_14__, i32*, i32, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32**, i64* }
%struct.TYPE_12__ = type { %struct.TYPE_11__, i64 }
%struct.TYPE_11__ = type { i64, i32 }

@_4bri_v2_bar_length = common dso_local global i32* null, align 8
@_4bri_bar_length = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*)* @diva_4bri_cleanup_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diva_4bri_cleanup_adapter(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %4 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %4, i32 0, i32 4
  %6 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %11 = call i32 @diva_4bri_stop_adapter(%struct.TYPE_15__* %10)
  br label %12

12:                                               ; preds = %9, %1
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %12
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @diva_os_remove_irq(%struct.TYPE_15__* %20, i32 %25)
  br label %27

27:                                               ; preds = %19, %12
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %33 = call i32 @diva_4bri_cleanup_slave_adapters(%struct.TYPE_15__* %32)
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %91, %27
  %35 = load i32, i32* %3, align 4
  %36 = icmp slt i32 %35, 4
  br i1 %36, label %37, label %94

37:                                               ; preds = %34
  %38 = load i32, i32* %3, align 4
  %39 = icmp ne i32 %38, 1
  br i1 %39, label %40, label %90

40:                                               ; preds = %37
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 1
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %89

51:                                               ; preds = %40
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = load i32**, i32*** %55, align 8
  %57 = load i32, i32* %3, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32*, i32** %56, i64 %58
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %89

62:                                               ; preds = %51
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load i32**, i32*** %66, align 8
  %68 = load i32, i32* %3, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32*, i32** %67, i64 %69
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @divasa_unmap_pci_bar(i32* %71)
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 1
  %77 = load i64*, i64** %76, align 8
  %78 = load i32, i32* %3, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  store i64 0, i64* %80, align 8
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = load i32**, i32*** %84, align 8
  %86 = load i32, i32* %3, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32*, i32** %85, i64 %87
  store i32* null, i32** %88, align 8
  br label %89

89:                                               ; preds = %62, %51, %40
  br label %90

90:                                               ; preds = %89, %37
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %3, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %3, align 4
  br label %34

94:                                               ; preds = %34
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 1
  %99 = load i64*, i64** %98, align 8
  %100 = getelementptr inbounds i64, i64* %99, i64 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %153

103:                                              ; preds = %94
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 0
  %108 = load i32**, i32*** %107, align 8
  %109 = getelementptr inbounds i32*, i32** %108, i64 1
  %110 = load i32*, i32** %109, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %153

112:                                              ; preds = %103
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 1
  %118 = load i64*, i64** %117, align 8
  %119 = getelementptr inbounds i64, i64* %118, i64 1
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = call i64 @_4bri_is_rev_2_card(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %112
  %127 = load i32*, i32** @_4bri_v2_bar_length, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 1
  %129 = load i32, i32* %128, align 4
  br label %134

130:                                              ; preds = %112
  %131 = load i32*, i32** @_4bri_bar_length, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 1
  %133 = load i32, i32* %132, align 4
  br label %134

134:                                              ; preds = %130, %126
  %135 = phi i32 [ %129, %126 ], [ %133, %130 ]
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 2
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  %140 = call i32 @diva_os_register_io_port(%struct.TYPE_15__* %113, i32 0, i64 %120, i32 %135, i32* %139, i32 1)
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 1
  %145 = load i64*, i64** %144, align 8
  %146 = getelementptr inbounds i64, i64* %145, i64 1
  store i64 0, i64* %146, align 8
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 0
  %151 = load i32**, i32*** %150, align 8
  %152 = getelementptr inbounds i32*, i32** %151, i64 1
  store i32* null, i32** %152, align 8
  br label %153

153:                                              ; preds = %134, %103, %94
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = icmp ne i32* %156, null
  br i1 %157, label %158, label %165

158:                                              ; preds = %153
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = call i32 @diva_os_free(i32 0, i32* %161)
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 0
  store i32* null, i32** %164, align 8
  br label %165

165:                                              ; preds = %158, %153
  ret i32 0
}

declare dso_local i32 @diva_4bri_stop_adapter(%struct.TYPE_15__*) #1

declare dso_local i32 @diva_os_remove_irq(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @diva_4bri_cleanup_slave_adapters(%struct.TYPE_15__*) #1

declare dso_local i32 @divasa_unmap_pci_bar(i32*) #1

declare dso_local i32 @diva_os_register_io_port(%struct.TYPE_15__*, i32, i64, i32, i32*, i32) #1

declare dso_local i64 @_4bri_is_rev_2_card(i32) #1

declare dso_local i32 @diva_os_free(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
