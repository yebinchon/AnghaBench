; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_of.c_of_image_hdr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_of.c_of_image_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64* }

@EI_CLASS = common dso_local global i64 0, align 8
@ELFCLASS64 = common dso_local global i64 0, align 8
@claim_base = common dso_local global i64 0, align 8
@PROG_START = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @of_image_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @of_image_hdr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %5, %struct.TYPE_2__** %3, align 8
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64*, i64** %7, align 8
  %9 = load i64, i64* @EI_CLASS, align 8
  %10 = getelementptr inbounds i64, i64* %8, i64 %9
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ELFCLASS64, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load i64, i64* @claim_base, align 8
  %16 = load i64, i64* @PROG_START, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i64, i64* @PROG_START, align 8
  store i64 %19, i64* @claim_base, align 8
  br label %20

20:                                               ; preds = %18, %14
  br label %21

21:                                               ; preds = %20, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
