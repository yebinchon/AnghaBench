; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/boot/extr_zfcpdump.c_s390_to_lkcd_hdr_asm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/boot/extr_zfcpdump.c_s390_to_lkcd_hdr_asm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dump_hdr_s390 = type { i32, i32*, i32 }
%struct.dump_hdr_lkcd_asm = type { i32, i32, i32*, i32, i64, i32 }

@DUMP_MAGIC_NUMBER_ASM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dump_hdr_s390*, %struct.dump_hdr_lkcd_asm*)* @s390_to_lkcd_hdr_asm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s390_to_lkcd_hdr_asm(%struct.dump_hdr_s390* %0, %struct.dump_hdr_lkcd_asm* %1) #0 {
  %3 = alloca %struct.dump_hdr_s390*, align 8
  %4 = alloca %struct.dump_hdr_lkcd_asm*, align 8
  %5 = alloca i32, align 4
  store %struct.dump_hdr_s390* %0, %struct.dump_hdr_s390** %3, align 8
  store %struct.dump_hdr_lkcd_asm* %1, %struct.dump_hdr_lkcd_asm** %4, align 8
  %6 = load i32, i32* @DUMP_MAGIC_NUMBER_ASM, align 4
  %7 = load %struct.dump_hdr_lkcd_asm*, %struct.dump_hdr_lkcd_asm** %4, align 8
  %8 = getelementptr inbounds %struct.dump_hdr_lkcd_asm, %struct.dump_hdr_lkcd_asm* %7, i32 0, i32 5
  store i32 %6, i32* %8, align 8
  %9 = load %struct.dump_hdr_lkcd_asm*, %struct.dump_hdr_lkcd_asm** %4, align 8
  %10 = getelementptr inbounds %struct.dump_hdr_lkcd_asm, %struct.dump_hdr_lkcd_asm* %9, i32 0, i32 4
  store i64 0, i64* %10, align 8
  %11 = load %struct.dump_hdr_lkcd_asm*, %struct.dump_hdr_lkcd_asm** %4, align 8
  %12 = getelementptr inbounds %struct.dump_hdr_lkcd_asm, %struct.dump_hdr_lkcd_asm* %11, i32 0, i32 0
  store i32 40, i32* %12, align 8
  %13 = load %struct.dump_hdr_s390*, %struct.dump_hdr_s390** %3, align 8
  %14 = getelementptr inbounds %struct.dump_hdr_s390, %struct.dump_hdr_s390* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.dump_hdr_lkcd_asm*, %struct.dump_hdr_lkcd_asm** %4, align 8
  %17 = getelementptr inbounds %struct.dump_hdr_lkcd_asm, %struct.dump_hdr_lkcd_asm* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.dump_hdr_s390*, %struct.dump_hdr_s390** %3, align 8
  %19 = getelementptr inbounds %struct.dump_hdr_s390, %struct.dump_hdr_s390* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.dump_hdr_lkcd_asm*, %struct.dump_hdr_lkcd_asm** %4, align 8
  %22 = getelementptr inbounds %struct.dump_hdr_lkcd_asm, %struct.dump_hdr_lkcd_asm* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 8
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %43, %2
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.dump_hdr_lkcd_asm*, %struct.dump_hdr_lkcd_asm** %4, align 8
  %26 = getelementptr inbounds %struct.dump_hdr_lkcd_asm, %struct.dump_hdr_lkcd_asm* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ult i32 %24, %27
  br i1 %28, label %29, label %46

29:                                               ; preds = %23
  %30 = load %struct.dump_hdr_s390*, %struct.dump_hdr_s390** %3, align 8
  %31 = getelementptr inbounds %struct.dump_hdr_s390, %struct.dump_hdr_s390* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.dump_hdr_lkcd_asm*, %struct.dump_hdr_lkcd_asm** %4, align 8
  %38 = getelementptr inbounds %struct.dump_hdr_lkcd_asm, %struct.dump_hdr_lkcd_asm* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 %36, i32* %42, align 4
  br label %43

43:                                               ; preds = %29
  %44 = load i32, i32* %5, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %23

46:                                               ; preds = %23
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
