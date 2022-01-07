; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/boot/extr_elf2ecoff.c_combine.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/boot/extr_elf2ecoff.c_combine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sect = type { i64, i64 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Non-contiguous data can't be converted.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sect*, %struct.sect*, i32)* @combine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @combine(%struct.sect* %0, %struct.sect* %1, i32 %2) #0 {
  %4 = alloca %struct.sect*, align 8
  %5 = alloca %struct.sect*, align 8
  %6 = alloca i32, align 4
  store %struct.sect* %0, %struct.sect** %4, align 8
  store %struct.sect* %1, %struct.sect** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.sect*, %struct.sect** %4, align 8
  %8 = getelementptr inbounds %struct.sect, %struct.sect* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %3
  %12 = load %struct.sect*, %struct.sect** %4, align 8
  %13 = load %struct.sect*, %struct.sect** %5, align 8
  %14 = bitcast %struct.sect* %12 to i8*
  %15 = bitcast %struct.sect* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 16, i1 false)
  br label %60

16:                                               ; preds = %3
  %17 = load %struct.sect*, %struct.sect** %5, align 8
  %18 = getelementptr inbounds %struct.sect, %struct.sect* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %59

21:                                               ; preds = %16
  %22 = load %struct.sect*, %struct.sect** %4, align 8
  %23 = getelementptr inbounds %struct.sect, %struct.sect* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.sect*, %struct.sect** %4, align 8
  %26 = getelementptr inbounds %struct.sect, %struct.sect* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %24, %27
  %29 = load %struct.sect*, %struct.sect** %5, align 8
  %30 = getelementptr inbounds %struct.sect, %struct.sect* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %28, %31
  br i1 %32, label %33, label %51

33:                                               ; preds = %21
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %33
  %37 = load %struct.sect*, %struct.sect** %5, align 8
  %38 = getelementptr inbounds %struct.sect, %struct.sect* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.sect*, %struct.sect** %4, align 8
  %41 = getelementptr inbounds %struct.sect, %struct.sect* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %39, %42
  %44 = load %struct.sect*, %struct.sect** %4, align 8
  %45 = getelementptr inbounds %struct.sect, %struct.sect* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  br label %50

46:                                               ; preds = %33
  %47 = load i32, i32* @stderr, align 4
  %48 = call i32 @fprintf(i32 %47, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %49 = call i32 @exit(i32 1) #4
  unreachable

50:                                               ; preds = %36
  br label %51

51:                                               ; preds = %50, %21
  %52 = load %struct.sect*, %struct.sect** %5, align 8
  %53 = getelementptr inbounds %struct.sect, %struct.sect* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.sect*, %struct.sect** %4, align 8
  %56 = getelementptr inbounds %struct.sect, %struct.sect* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, %54
  store i64 %58, i64* %56, align 8
  br label %59

59:                                               ; preds = %51, %16
  br label %60

60:                                               ; preds = %59, %11
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @fprintf(i32, i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
