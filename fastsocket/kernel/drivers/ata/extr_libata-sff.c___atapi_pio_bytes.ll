; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-sff.c___atapi_pio_bytes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-sff.c___atapi_pio_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { i32, i32, %struct.scatterlist*, %struct.TYPE_5__, i32, %struct.ata_device*, %struct.ata_port* }
%struct.scatterlist = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ata_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ata_eh_info }
%struct.ata_eh_info = type { i32 }
%struct.ata_port = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.ata_device*, i8*, i32, i32)* }
%struct.page = type { i32 }

@ATA_TFLAG_WRITE = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"unexpected or too much trailing data buf=%u cur=%u bytes=%u\00", align 1
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"data %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@KM_IRQ0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_queued_cmd*, i32)* @__atapi_pio_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__atapi_pio_bytes(%struct.ata_queued_cmd* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_queued_cmd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ata_port*, align 8
  %8 = alloca %struct.ata_device*, align 8
  %9 = alloca %struct.ata_eh_info*, align 8
  %10 = alloca %struct.scatterlist*, align 8
  %11 = alloca %struct.page*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %4, align 8
  store i32 %1, i32* %5, align 4
  %17 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %18 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @ATA_TFLAG_WRITE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @WRITE, align 4
  br label %28

26:                                               ; preds = %2
  %27 = load i32, i32* @READ, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  store i32 %29, i32* %6, align 4
  %30 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %31 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %30, i32 0, i32 6
  %32 = load %struct.ata_port*, %struct.ata_port** %31, align 8
  store %struct.ata_port* %32, %struct.ata_port** %7, align 8
  %33 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %34 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %33, i32 0, i32 5
  %35 = load %struct.ata_device*, %struct.ata_device** %34, align 8
  store %struct.ata_device* %35, %struct.ata_device** %8, align 8
  %36 = load %struct.ata_device*, %struct.ata_device** %8, align 8
  %37 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store %struct.ata_eh_info* %39, %struct.ata_eh_info** %9, align 8
  br label %40

40:                                               ; preds = %180, %28
  %41 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %42 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %41, i32 0, i32 2
  %43 = load %struct.scatterlist*, %struct.scatterlist** %42, align 8
  store %struct.scatterlist* %43, %struct.scatterlist** %10, align 8
  %44 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %45 = icmp ne %struct.scatterlist* %44, null
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %40
  %51 = load %struct.ata_eh_info*, %struct.ata_eh_info** %9, align 8
  %52 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %53 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %56 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @ata_ehi_push_desc(%struct.ata_eh_info* %51, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %57, i32 %58)
  store i32 -1, i32* %3, align 4
  br label %182

60:                                               ; preds = %40
  %61 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %62 = call %struct.page* @sg_page(%struct.scatterlist* %61)
  store %struct.page* %62, %struct.page** %11, align 8
  %63 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %64 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %67 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = add i32 %65, %68
  store i32 %69, i32* %13, align 4
  %70 = load %struct.page*, %struct.page** %11, align 8
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* @PAGE_SHIFT, align 4
  %73 = lshr i32 %71, %72
  %74 = call %struct.page* @nth_page(%struct.page* %70, i32 %73)
  store %struct.page* %74, %struct.page** %11, align 8
  %75 = load i32, i32* @PAGE_SIZE, align 4
  %76 = load i32, i32* %13, align 4
  %77 = urem i32 %76, %75
  store i32 %77, i32* %13, align 4
  %78 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %79 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %82 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = sub i32 %80, %83
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @min(i32 %84, i32 %85)
  store i32 %86, i32* %14, align 4
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* @PAGE_SIZE, align 4
  %89 = load i32, i32* %13, align 4
  %90 = sub i32 %88, %89
  %91 = call i32 @min(i32 %87, i32 %90)
  store i32 %91, i32* %14, align 4
  %92 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %93 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @ATA_TFLAG_WRITE, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %101 = call i32 @DPRINTK(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %100)
  %102 = load %struct.page*, %struct.page** %11, align 8
  %103 = call i64 @PageHighMem(%struct.page* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %129

105:                                              ; preds = %60
  %106 = load i64, i64* %16, align 8
  %107 = call i32 @local_irq_save(i64 %106)
  %108 = load %struct.page*, %struct.page** %11, align 8
  %109 = load i32, i32* @KM_IRQ0, align 4
  %110 = call i8* @kmap_atomic(%struct.page* %108, i32 %109)
  store i8* %110, i8** %12, align 8
  %111 = load %struct.ata_port*, %struct.ata_port** %7, align 8
  %112 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %111, i32 0, i32 0
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i32 (%struct.ata_device*, i8*, i32, i32)*, i32 (%struct.ata_device*, i8*, i32, i32)** %114, align 8
  %116 = load %struct.ata_device*, %struct.ata_device** %8, align 8
  %117 = load i8*, i8** %12, align 8
  %118 = load i32, i32* %13, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %117, i64 %119
  %121 = load i32, i32* %14, align 4
  %122 = load i32, i32* %6, align 4
  %123 = call i32 %115(%struct.ata_device* %116, i8* %120, i32 %121, i32 %122)
  store i32 %123, i32* %15, align 4
  %124 = load i8*, i8** %12, align 8
  %125 = load i32, i32* @KM_IRQ0, align 4
  %126 = call i32 @kunmap_atomic(i8* %124, i32 %125)
  %127 = load i64, i64* %16, align 8
  %128 = call i32 @local_irq_restore(i64 %127)
  br label %145

129:                                              ; preds = %60
  %130 = load %struct.page*, %struct.page** %11, align 8
  %131 = call i8* @page_address(%struct.page* %130)
  store i8* %131, i8** %12, align 8
  %132 = load %struct.ata_port*, %struct.ata_port** %7, align 8
  %133 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %132, i32 0, i32 0
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load i32 (%struct.ata_device*, i8*, i32, i32)*, i32 (%struct.ata_device*, i8*, i32, i32)** %135, align 8
  %137 = load %struct.ata_device*, %struct.ata_device** %8, align 8
  %138 = load i8*, i8** %12, align 8
  %139 = load i32, i32* %13, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %138, i64 %140
  %142 = load i32, i32* %14, align 4
  %143 = load i32, i32* %6, align 4
  %144 = call i32 %136(%struct.ata_device* %137, i8* %141, i32 %142, i32 %143)
  store i32 %144, i32* %15, align 4
  br label %145

145:                                              ; preds = %129, %105
  %146 = load i32, i32* %5, align 4
  %147 = load i32, i32* %15, align 4
  %148 = call i32 @min(i32 %146, i32 %147)
  %149 = load i32, i32* %5, align 4
  %150 = sub i32 %149, %148
  store i32 %150, i32* %5, align 4
  %151 = load i32, i32* %14, align 4
  %152 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %153 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = add i32 %154, %151
  store i32 %155, i32* %153, align 8
  %156 = load i32, i32* %14, align 4
  %157 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %158 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = add i32 %159, %156
  store i32 %160, i32* %158, align 4
  %161 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %162 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %165 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = icmp eq i32 %163, %166
  br i1 %167, label %168, label %177

168:                                              ; preds = %145
  %169 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %170 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %169, i32 0, i32 2
  %171 = load %struct.scatterlist*, %struct.scatterlist** %170, align 8
  %172 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %171)
  %173 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %174 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %173, i32 0, i32 2
  store %struct.scatterlist* %172, %struct.scatterlist** %174, align 8
  %175 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %176 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %175, i32 0, i32 1
  store i32 0, i32* %176, align 4
  br label %177

177:                                              ; preds = %168, %145
  %178 = load i32, i32* %5, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %177
  br label %40

181:                                              ; preds = %177
  store i32 0, i32* %3, align 4
  br label %182

182:                                              ; preds = %181, %50
  %183 = load i32, i32* %3, align 4
  ret i32 %183
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ata_ehi_push_desc(%struct.ata_eh_info*, i8*, i32, i32, i32) #1

declare dso_local %struct.page* @sg_page(%struct.scatterlist*) #1

declare dso_local %struct.page* @nth_page(%struct.page*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @DPRINTK(i8*, i8*) #1

declare dso_local i64 @PageHighMem(%struct.page*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i8* @kmap_atomic(%struct.page*, i32) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
