; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_txx9dmac.h_txx9dmac_desc_set_nosimple.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_txx9dmac.h_txx9dmac_desc_set_nosimple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.txx9dmac_dev = type { i32 }
%struct.txx9dmac_desc = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8*, i8*, i8* }
%struct.TYPE_3__ = type { i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.txx9dmac_dev*, %struct.txx9dmac_desc*, i8*, i8*, i8*)* @txx9dmac_desc_set_nosimple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @txx9dmac_desc_set_nosimple(%struct.txx9dmac_dev* %0, %struct.txx9dmac_desc* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.txx9dmac_dev*, align 8
  %7 = alloca %struct.txx9dmac_desc*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.txx9dmac_dev* %0, %struct.txx9dmac_dev** %6, align 8
  store %struct.txx9dmac_desc* %1, %struct.txx9dmac_desc** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %11 = load %struct.txx9dmac_dev*, %struct.txx9dmac_dev** %6, align 8
  %12 = call i64 @__is_dmac64(%struct.txx9dmac_dev* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %5
  %15 = load i8*, i8** %8, align 8
  %16 = load %struct.txx9dmac_desc*, %struct.txx9dmac_desc** %7, align 8
  %17 = getelementptr inbounds %struct.txx9dmac_desc, %struct.txx9dmac_desc* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  store i8* %15, i8** %18, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = load %struct.txx9dmac_desc*, %struct.txx9dmac_desc** %7, align 8
  %21 = getelementptr inbounds %struct.txx9dmac_desc, %struct.txx9dmac_desc* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  store i8* %19, i8** %22, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = load %struct.txx9dmac_desc*, %struct.txx9dmac_desc** %7, align 8
  %25 = getelementptr inbounds %struct.txx9dmac_desc, %struct.txx9dmac_desc* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i8* %23, i8** %26, align 8
  br label %40

27:                                               ; preds = %5
  %28 = load i8*, i8** %8, align 8
  %29 = load %struct.txx9dmac_desc*, %struct.txx9dmac_desc** %7, align 8
  %30 = getelementptr inbounds %struct.txx9dmac_desc, %struct.txx9dmac_desc* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  store i8* %28, i8** %31, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = load %struct.txx9dmac_desc*, %struct.txx9dmac_desc** %7, align 8
  %34 = getelementptr inbounds %struct.txx9dmac_desc, %struct.txx9dmac_desc* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  store i8* %32, i8** %35, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = load %struct.txx9dmac_desc*, %struct.txx9dmac_desc** %7, align 8
  %38 = getelementptr inbounds %struct.txx9dmac_desc, %struct.txx9dmac_desc* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i8* %36, i8** %39, align 8
  br label %40

40:                                               ; preds = %27, %14
  ret void
}

declare dso_local i64 @__is_dmac64(%struct.txx9dmac_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
