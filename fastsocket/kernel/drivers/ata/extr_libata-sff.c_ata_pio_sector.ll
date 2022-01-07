; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-sff.c_ata_pio_sector.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-sff.c_ata_pio_sector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { i64, i64, i64, i32, %struct.TYPE_8__*, i32, %struct.TYPE_6__, %struct.ata_port* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ata_port = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 (i32, i8*, i64, i32)* }
%struct.page = type { i32 }

@ATA_TFLAG_WRITE = common dso_local global i32 0, align 4
@HSM_ST_LAST = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"data %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@KM_IRQ0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_queued_cmd*)* @ata_pio_sector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_pio_sector(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca %struct.ata_queued_cmd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_port*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %2, align 8
  %9 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %10 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %9, i32 0, i32 6
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @ATA_TFLAG_WRITE, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %3, align 4
  %15 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %16 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %15, i32 0, i32 7
  %17 = load %struct.ata_port*, %struct.ata_port** %16, align 8
  store %struct.ata_port* %17, %struct.ata_port** %4, align 8
  %18 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %19 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %22 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %25 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %23, %26
  %28 = icmp eq i64 %20, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %1
  %30 = load i32, i32* @HSM_ST_LAST, align 4
  %31 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %32 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  br label %33

33:                                               ; preds = %29, %1
  %34 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %35 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %34, i32 0, i32 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = call %struct.page* @sg_page(%struct.TYPE_8__* %36)
  store %struct.page* %37, %struct.page** %5, align 8
  %38 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %39 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %38, i32 0, i32 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %44 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = add i32 %42, %45
  store i32 %46, i32* %6, align 4
  %47 = load %struct.page*, %struct.page** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @PAGE_SHIFT, align 4
  %50 = lshr i32 %48, %49
  %51 = call %struct.page* @nth_page(%struct.page* %47, i32 %50)
  store %struct.page* %51, %struct.page** %5, align 8
  %52 = load i32, i32* @PAGE_SIZE, align 4
  %53 = load i32, i32* %6, align 4
  %54 = urem i32 %53, %52
  store i32 %54, i32* %6, align 4
  %55 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %56 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %55, i32 0, i32 6
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @ATA_TFLAG_WRITE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %64 = call i32 @DPRINTK(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %63)
  %65 = load %struct.page*, %struct.page** %5, align 8
  %66 = call i64 @PageHighMem(%struct.page* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %96

68:                                               ; preds = %33
  %69 = load i64, i64* %8, align 8
  %70 = call i32 @local_irq_save(i64 %69)
  %71 = load %struct.page*, %struct.page** %5, align 8
  %72 = load i32, i32* @KM_IRQ0, align 4
  %73 = call i8* @kmap_atomic(%struct.page* %71, i32 %72)
  store i8* %73, i8** %7, align 8
  %74 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %75 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %74, i32 0, i32 0
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32 (i32, i8*, i64, i32)*, i32 (i32, i8*, i64, i32)** %77, align 8
  %79 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %80 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = load i32, i32* %6, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  %86 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %87 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load i32, i32* %3, align 4
  %90 = call i32 %78(i32 %81, i8* %85, i64 %88, i32 %89)
  %91 = load i8*, i8** %7, align 8
  %92 = load i32, i32* @KM_IRQ0, align 4
  %93 = call i32 @kunmap_atomic(i8* %91, i32 %92)
  %94 = load i64, i64* %8, align 8
  %95 = call i32 @local_irq_restore(i64 %94)
  br label %116

96:                                               ; preds = %33
  %97 = load %struct.page*, %struct.page** %5, align 8
  %98 = call i8* @page_address(%struct.page* %97)
  store i8* %98, i8** %7, align 8
  %99 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %100 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %99, i32 0, i32 0
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i32 (i32, i8*, i64, i32)*, i32 (i32, i8*, i64, i32)** %102, align 8
  %104 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %105 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 8
  %107 = load i8*, i8** %7, align 8
  %108 = load i32, i32* %6, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  %111 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %112 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = load i32, i32* %3, align 4
  %115 = call i32 %103(i32 %106, i8* %110, i64 %113, i32 %114)
  br label %116

116:                                              ; preds = %96, %68
  %117 = load i32, i32* %3, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %126, label %119

119:                                              ; preds = %116
  %120 = load %struct.page*, %struct.page** %5, align 8
  %121 = call i32 @PageSlab(%struct.page* %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %119
  %124 = load %struct.page*, %struct.page** %5, align 8
  %125 = call i32 @flush_dcache_page(%struct.page* %124)
  br label %126

126:                                              ; preds = %123, %119, %116
  %127 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %128 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %131 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = add nsw i64 %132, %129
  store i64 %133, i64* %131, align 8
  %134 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %135 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %138 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = zext i32 %139 to i64
  %141 = add nsw i64 %140, %136
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %138, align 8
  %143 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %144 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %147 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %146, i32 0, i32 4
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = icmp eq i32 %145, %150
  br i1 %151, label %152, label %161

152:                                              ; preds = %126
  %153 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %154 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %153, i32 0, i32 4
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %154, align 8
  %156 = call %struct.TYPE_8__* @sg_next(%struct.TYPE_8__* %155)
  %157 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %158 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %157, i32 0, i32 4
  store %struct.TYPE_8__* %156, %struct.TYPE_8__** %158, align 8
  %159 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %160 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %159, i32 0, i32 3
  store i32 0, i32* %160, align 8
  br label %161

161:                                              ; preds = %152, %126
  ret void
}

declare dso_local %struct.page* @sg_page(%struct.TYPE_8__*) #1

declare dso_local %struct.page* @nth_page(%struct.page*, i32) #1

declare dso_local i32 @DPRINTK(i8*, i8*) #1

declare dso_local i64 @PageHighMem(%struct.page*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i8* @kmap_atomic(%struct.page*, i32) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @PageSlab(%struct.page*) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

declare dso_local %struct.TYPE_8__* @sg_next(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
