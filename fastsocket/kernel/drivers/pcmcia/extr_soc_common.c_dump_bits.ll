; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_soc_common.c_dump_bits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_soc_common.c_dump_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bittbl = type { i32, i8* }

@.str = private unnamed_addr constant [6 x i8] c"%-9s:\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i8*, i32, %struct.bittbl*, i32)* @dump_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_bits(i8** %0, i8* %1, i32 %2, %struct.bittbl* %3, i32 %4) #0 {
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bittbl*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8** %0, i8*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.bittbl* %3, %struct.bittbl** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load i8**, i8*** %6, align 8
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %11, align 8
  %15 = load i8*, i8** %11, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @sprintf(i8* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load i8*, i8** %11, align 8
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  store i8* %20, i8** %11, align 8
  store i32 0, i32* %12, align 4
  br label %21

21:                                               ; preds = %48, %5
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %51

25:                                               ; preds = %21
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.bittbl*, %struct.bittbl** %9, align 8
  %28 = load i32, i32* %12, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.bittbl, %struct.bittbl* %27, i64 %29
  %31 = getelementptr inbounds %struct.bittbl, %struct.bittbl* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %26, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %25
  %36 = load i8*, i8** %11, align 8
  %37 = load %struct.bittbl*, %struct.bittbl** %9, align 8
  %38 = load i32, i32* %12, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.bittbl, %struct.bittbl* %37, i64 %39
  %41 = getelementptr inbounds %struct.bittbl, %struct.bittbl* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @sprintf(i8* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  %44 = load i8*, i8** %11, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  store i8* %46, i8** %11, align 8
  br label %47

47:                                               ; preds = %35, %25
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %12, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %12, align 4
  br label %21

51:                                               ; preds = %21
  %52 = load i8*, i8** %11, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %11, align 8
  store i8 10, i8* %52, align 1
  %54 = load i8*, i8** %11, align 8
  %55 = load i8**, i8*** %6, align 8
  store i8* %54, i8** %55, align 8
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
