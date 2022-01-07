; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/lguest/extr_lguest.c_load_kernel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/lguest/extr_lguest.c_load_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"Reading kernel\00", align 1
@ELFMAG = common dso_local global i32 0, align 4
@SELFMAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @load_kernel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @load_kernel(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @read(i32 %5, %struct.TYPE_4__* %4, i32 4)
  %7 = sext i32 %6 to i64
  %8 = icmp ne i64 %7, 4
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @ELFMAG, align 4
  %15 = load i32, i32* @SELFMAG, align 4
  %16 = call i64 @memcmp(i32 %13, i32 %14, i32 %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = load i32, i32* %3, align 4
  %20 = call i64 @map_elf(i32 %19, %struct.TYPE_4__* %4)
  store i64 %20, i64* %2, align 8
  br label %24

21:                                               ; preds = %11
  %22 = load i32, i32* %3, align 4
  %23 = call i64 @load_bzimage(i32 %22)
  store i64 %23, i64* %2, align 8
  br label %24

24:                                               ; preds = %21, %18
  %25 = load i64, i64* %2, align 8
  ret i64 %25
}

declare dso_local i32 @read(i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i64 @map_elf(i32, %struct.TYPE_4__*) #1

declare dso_local i64 @load_bzimage(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
