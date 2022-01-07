; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/hypfs/extr_hypfs_diag.c_part_hdr__part_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/hypfs/extr_hypfs_diag.c_part_hdr__part_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.part_hdr = type { i32 }
%struct.x_part_hdr = type { i32 }

@INFO_SIMPLE = common dso_local global i32 0, align 4
@LPAR_NAME_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*)* @part_hdr__part_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @part_hdr__part_name(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @INFO_SIMPLE, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %3
  %11 = load i8*, i8** %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.part_hdr*
  %14 = getelementptr inbounds %struct.part_hdr, %struct.part_hdr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i64, i64* @LPAR_NAME_LEN, align 8
  %17 = call i32 @memcpy(i8* %11, i32 %15, i64 %16)
  br label %26

18:                                               ; preds = %3
  %19 = load i8*, i8** %6, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = bitcast i8* %20 to %struct.x_part_hdr*
  %22 = getelementptr inbounds %struct.x_part_hdr, %struct.x_part_hdr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i64, i64* @LPAR_NAME_LEN, align 8
  %25 = call i32 @memcpy(i8* %19, i32 %23, i64 %24)
  br label %26

26:                                               ; preds = %18, %10
  %27 = load i8*, i8** %6, align 8
  %28 = load i64, i64* @LPAR_NAME_LEN, align 8
  %29 = call i32 @EBCASC(i8* %27, i64 %28)
  %30 = load i8*, i8** %6, align 8
  %31 = load i64, i64* @LPAR_NAME_LEN, align 8
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  store i8 0, i8* %32, align 1
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @strim(i8* %33)
  ret void
}

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @EBCASC(i8*, i64) #1

declare dso_local i32 @strim(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
