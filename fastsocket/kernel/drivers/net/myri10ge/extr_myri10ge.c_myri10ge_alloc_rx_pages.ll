; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/myri10ge/extr_myri10ge.c_myri10ge_alloc_rx_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/myri10ge/extr_myri10ge.c_myri10ge_alloc_rx_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myri10ge_priv = type { i32 }
%struct.myri10ge_rx_buf = type { i32, i32, i32, i32, i32, %struct.TYPE_4__*, i32*, i32, %struct.TYPE_3__*, %struct.page* }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.TYPE_3__ = type { i32, %struct.page* }
%struct.page = type { i32 }

@MYRI10GE_ALLOC_SIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@__GFP_COMP = common dso_local global i32 0, align 4
@MYRI10GE_ALLOC_ORDER = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@bus = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.myri10ge_priv*, %struct.myri10ge_rx_buf*, i32, i32)* @myri10ge_alloc_rx_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @myri10ge_alloc_rx_pages(%struct.myri10ge_priv* %0, %struct.myri10ge_rx_buf* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.myri10ge_priv*, align 8
  %6 = alloca %struct.myri10ge_rx_buf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.page*, align 8
  %10 = alloca i32, align 4
  store %struct.myri10ge_priv* %0, %struct.myri10ge_priv** %5, align 8
  store %struct.myri10ge_rx_buf* %1, %struct.myri10ge_rx_buf** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.myri10ge_rx_buf*, %struct.myri10ge_rx_buf** %6, align 8
  %12 = getelementptr inbounds %struct.myri10ge_rx_buf, %struct.myri10ge_rx_buf* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br label %19

19:                                               ; preds = %15, %4
  %20 = phi i1 [ false, %4 ], [ %18, %15 ]
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %191

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %190, %25
  %27 = load %struct.myri10ge_rx_buf*, %struct.myri10ge_rx_buf** %6, align 8
  %28 = getelementptr inbounds %struct.myri10ge_rx_buf, %struct.myri10ge_rx_buf* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.myri10ge_rx_buf*, %struct.myri10ge_rx_buf** %6, align 8
  %31 = getelementptr inbounds %struct.myri10ge_rx_buf, %struct.myri10ge_rx_buf* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.myri10ge_rx_buf*, %struct.myri10ge_rx_buf** %6, align 8
  %34 = getelementptr inbounds %struct.myri10ge_rx_buf, %struct.myri10ge_rx_buf* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %32, %35
  %37 = add nsw i32 %36, 1
  %38 = icmp ne i32 %29, %37
  br i1 %38, label %39, label %191

39:                                               ; preds = %26
  %40 = load %struct.myri10ge_rx_buf*, %struct.myri10ge_rx_buf** %6, align 8
  %41 = getelementptr inbounds %struct.myri10ge_rx_buf, %struct.myri10ge_rx_buf* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.myri10ge_rx_buf*, %struct.myri10ge_rx_buf** %6, align 8
  %44 = getelementptr inbounds %struct.myri10ge_rx_buf, %struct.myri10ge_rx_buf* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %42, %45
  store i32 %46, i32* %10, align 4
  %47 = load %struct.myri10ge_rx_buf*, %struct.myri10ge_rx_buf** %6, align 8
  %48 = getelementptr inbounds %struct.myri10ge_rx_buf, %struct.myri10ge_rx_buf* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %49, %50
  %52 = load i32, i32* @MYRI10GE_ALLOC_SIZE, align 4
  %53 = icmp sle i32 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %39
  %55 = load %struct.myri10ge_rx_buf*, %struct.myri10ge_rx_buf** %6, align 8
  %56 = getelementptr inbounds %struct.myri10ge_rx_buf, %struct.myri10ge_rx_buf* %55, i32 0, i32 9
  %57 = load %struct.page*, %struct.page** %56, align 8
  %58 = call i32 @get_page(%struct.page* %57)
  br label %98

59:                                               ; preds = %39
  %60 = load i32, i32* @GFP_ATOMIC, align 4
  %61 = load i32, i32* @__GFP_COMP, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @MYRI10GE_ALLOC_ORDER, align 4
  %64 = call %struct.page* @alloc_pages(i32 %62, i32 %63)
  store %struct.page* %64, %struct.page** %9, align 8
  %65 = load %struct.page*, %struct.page** %9, align 8
  %66 = icmp eq %struct.page* %65, null
  %67 = zext i1 %66 to i32
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %59
  %71 = load %struct.myri10ge_rx_buf*, %struct.myri10ge_rx_buf** %6, align 8
  %72 = getelementptr inbounds %struct.myri10ge_rx_buf, %struct.myri10ge_rx_buf* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.myri10ge_rx_buf*, %struct.myri10ge_rx_buf** %6, align 8
  %75 = getelementptr inbounds %struct.myri10ge_rx_buf, %struct.myri10ge_rx_buf* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = sub nsw i32 %73, %76
  %78 = icmp slt i32 %77, 16
  br i1 %78, label %79, label %82

79:                                               ; preds = %70
  %80 = load %struct.myri10ge_rx_buf*, %struct.myri10ge_rx_buf** %6, align 8
  %81 = getelementptr inbounds %struct.myri10ge_rx_buf, %struct.myri10ge_rx_buf* %80, i32 0, i32 0
  store i32 1, i32* %81, align 8
  br label %82

82:                                               ; preds = %79, %70
  br label %191

83:                                               ; preds = %59
  %84 = load %struct.page*, %struct.page** %9, align 8
  %85 = load %struct.myri10ge_rx_buf*, %struct.myri10ge_rx_buf** %6, align 8
  %86 = getelementptr inbounds %struct.myri10ge_rx_buf, %struct.myri10ge_rx_buf* %85, i32 0, i32 9
  store %struct.page* %84, %struct.page** %86, align 8
  %87 = load %struct.myri10ge_rx_buf*, %struct.myri10ge_rx_buf** %6, align 8
  %88 = getelementptr inbounds %struct.myri10ge_rx_buf, %struct.myri10ge_rx_buf* %87, i32 0, i32 4
  store i32 0, i32* %88, align 8
  %89 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %5, align 8
  %90 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.page*, %struct.page** %9, align 8
  %93 = load i32, i32* @MYRI10GE_ALLOC_SIZE, align 4
  %94 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %95 = call i32 @pci_map_page(i32 %91, %struct.page* %92, i32 0, i32 %93, i32 %94)
  %96 = load %struct.myri10ge_rx_buf*, %struct.myri10ge_rx_buf** %6, align 8
  %97 = getelementptr inbounds %struct.myri10ge_rx_buf, %struct.myri10ge_rx_buf* %96, i32 0, i32 7
  store i32 %95, i32* %97, align 8
  br label %98

98:                                               ; preds = %83, %54
  %99 = load %struct.myri10ge_rx_buf*, %struct.myri10ge_rx_buf** %6, align 8
  %100 = getelementptr inbounds %struct.myri10ge_rx_buf, %struct.myri10ge_rx_buf* %99, i32 0, i32 9
  %101 = load %struct.page*, %struct.page** %100, align 8
  %102 = load %struct.myri10ge_rx_buf*, %struct.myri10ge_rx_buf** %6, align 8
  %103 = getelementptr inbounds %struct.myri10ge_rx_buf, %struct.myri10ge_rx_buf* %102, i32 0, i32 8
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = load i32, i32* %10, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  store %struct.page* %101, %struct.page** %108, align 8
  %109 = load %struct.myri10ge_rx_buf*, %struct.myri10ge_rx_buf** %6, align 8
  %110 = getelementptr inbounds %struct.myri10ge_rx_buf, %struct.myri10ge_rx_buf* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.myri10ge_rx_buf*, %struct.myri10ge_rx_buf** %6, align 8
  %113 = getelementptr inbounds %struct.myri10ge_rx_buf, %struct.myri10ge_rx_buf* %112, i32 0, i32 8
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %113, align 8
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  store i32 %111, i32* %118, align 8
  %119 = load %struct.myri10ge_rx_buf*, %struct.myri10ge_rx_buf** %6, align 8
  %120 = getelementptr inbounds %struct.myri10ge_rx_buf, %struct.myri10ge_rx_buf* %119, i32 0, i32 8
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %120, align 8
  %122 = load i32, i32* %10, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i64 %123
  %125 = load i32, i32* @bus, align 4
  %126 = load %struct.myri10ge_rx_buf*, %struct.myri10ge_rx_buf** %6, align 8
  %127 = getelementptr inbounds %struct.myri10ge_rx_buf, %struct.myri10ge_rx_buf* %126, i32 0, i32 7
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @pci_unmap_addr_set(%struct.TYPE_3__* %124, i32 %125, i32 %128)
  %130 = load %struct.myri10ge_rx_buf*, %struct.myri10ge_rx_buf** %6, align 8
  %131 = getelementptr inbounds %struct.myri10ge_rx_buf, %struct.myri10ge_rx_buf* %130, i32 0, i32 7
  %132 = load i32, i32* %131, align 8
  %133 = call i64 @MYRI10GE_LOWPART_TO_U32(i32 %132)
  %134 = load %struct.myri10ge_rx_buf*, %struct.myri10ge_rx_buf** %6, align 8
  %135 = getelementptr inbounds %struct.myri10ge_rx_buf, %struct.myri10ge_rx_buf* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = sext i32 %136 to i64
  %138 = add nsw i64 %133, %137
  %139 = call i8* @htonl(i64 %138)
  %140 = load %struct.myri10ge_rx_buf*, %struct.myri10ge_rx_buf** %6, align 8
  %141 = getelementptr inbounds %struct.myri10ge_rx_buf, %struct.myri10ge_rx_buf* %140, i32 0, i32 5
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %141, align 8
  %143 = load i32, i32* %10, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 1
  store i8* %139, i8** %146, align 8
  %147 = load %struct.myri10ge_rx_buf*, %struct.myri10ge_rx_buf** %6, align 8
  %148 = getelementptr inbounds %struct.myri10ge_rx_buf, %struct.myri10ge_rx_buf* %147, i32 0, i32 7
  %149 = load i32, i32* %148, align 8
  %150 = call i64 @MYRI10GE_HIGHPART_TO_U32(i32 %149)
  %151 = call i8* @htonl(i64 %150)
  %152 = load %struct.myri10ge_rx_buf*, %struct.myri10ge_rx_buf** %6, align 8
  %153 = getelementptr inbounds %struct.myri10ge_rx_buf, %struct.myri10ge_rx_buf* %152, i32 0, i32 5
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %153, align 8
  %155 = load i32, i32* %10, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  store i8* %151, i8** %158, align 8
  %159 = load i32, i32* %7, align 4
  %160 = call i64 @SKB_DATA_ALIGN(i32 %159)
  %161 = load %struct.myri10ge_rx_buf*, %struct.myri10ge_rx_buf** %6, align 8
  %162 = getelementptr inbounds %struct.myri10ge_rx_buf, %struct.myri10ge_rx_buf* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 8
  %164 = sext i32 %163 to i64
  %165 = add nsw i64 %164, %160
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* %162, align 8
  %167 = load %struct.myri10ge_rx_buf*, %struct.myri10ge_rx_buf** %6, align 8
  %168 = getelementptr inbounds %struct.myri10ge_rx_buf, %struct.myri10ge_rx_buf* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %168, align 4
  %171 = load i32, i32* %10, align 4
  %172 = and i32 %171, 7
  %173 = icmp eq i32 %172, 7
  br i1 %173, label %174, label %190

174:                                              ; preds = %98
  %175 = load %struct.myri10ge_rx_buf*, %struct.myri10ge_rx_buf** %6, align 8
  %176 = getelementptr inbounds %struct.myri10ge_rx_buf, %struct.myri10ge_rx_buf* %175, i32 0, i32 6
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* %10, align 4
  %179 = sub nsw i32 %178, 7
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %177, i64 %180
  %182 = load %struct.myri10ge_rx_buf*, %struct.myri10ge_rx_buf** %6, align 8
  %183 = getelementptr inbounds %struct.myri10ge_rx_buf, %struct.myri10ge_rx_buf* %182, i32 0, i32 5
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %183, align 8
  %185 = load i32, i32* %10, align 4
  %186 = sub nsw i32 %185, 7
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i64 %187
  %189 = call i32 @myri10ge_submit_8rx(i32* %181, %struct.TYPE_4__* %188)
  br label %190

190:                                              ; preds = %174, %98
  br label %26

191:                                              ; preds = %24, %82, %26
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local %struct.page* @alloc_pages(i32, i32) #1

declare dso_local i32 @pci_map_page(i32, %struct.page*, i32, i32, i32) #1

declare dso_local i32 @pci_unmap_addr_set(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i8* @htonl(i64) #1

declare dso_local i64 @MYRI10GE_LOWPART_TO_U32(i32) #1

declare dso_local i64 @MYRI10GE_HIGHPART_TO_U32(i32) #1

declare dso_local i64 @SKB_DATA_ALIGN(i32) #1

declare dso_local i32 @myri10ge_submit_8rx(i32*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
