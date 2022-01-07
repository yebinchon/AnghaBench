; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_storvsc_drv.c_sg_kmap_atomic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_storvsc_drv.c_sg_kmap_atomic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i32 }

@KM_IRQ0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.scatterlist*, i32)* @sg_kmap_atomic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sg_kmap_atomic(%struct.scatterlist* %0, i32 %1) #0 {
  %3 = alloca %struct.scatterlist*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.scatterlist* %0, %struct.scatterlist** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.scatterlist*, %struct.scatterlist** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %6, i64 %8
  %10 = call i32 @sg_page(%struct.scatterlist* %9)
  %11 = load i32, i32* @KM_IRQ0, align 4
  %12 = call i8* @kmap_atomic(i32 %10, i32 %11)
  store i8* %12, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = ptrtoint i8* %13 to i64
  ret i64 %14
}

declare dso_local i8* @kmap_atomic(i32, i32) #1

declare dso_local i32 @sg_page(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
