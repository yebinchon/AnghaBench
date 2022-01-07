; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_gf128mul.c_gf128mul_x8_bbe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_gf128mul.c_gf128mul_x8_bbe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8* }

@gf128mul_table_bbe = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @gf128mul_x8_bbe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gf128mul_x8_bbe(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %8 = load i8*, i8** %7, align 8
  %9 = call i32 @be64_to_cpu(i8* %8)
  store i32 %9, i32* %3, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 @be64_to_cpu(i8* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32*, i32** @gf128mul_table_bbe, align 8
  %15 = load i32, i32* %3, align 4
  %16 = ashr i32 %15, 56
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %3, align 4
  %21 = shl i32 %20, 8
  %22 = load i32, i32* %4, align 4
  %23 = ashr i32 %22, 56
  %24 = or i32 %21, %23
  %25 = call i8* @cpu_to_be64(i32 %24)
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* %4, align 4
  %29 = shl i32 %28, 8
  %30 = load i32, i32* %5, align 4
  %31 = xor i32 %29, %30
  %32 = call i8* @cpu_to_be64(i32 %31)
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  ret void
}

declare dso_local i32 @be64_to_cpu(i8*) #1

declare dso_local i8* @cpu_to_be64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
