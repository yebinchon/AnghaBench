; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_alps.c_alps_decode_pinnacle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_alps.c_alps_decode_pinnacle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alps_fields = type { i32, i32, i8, i8, i8 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alps_fields*, i8*)* @alps_decode_pinnacle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alps_decode_pinnacle(%struct.alps_fields* %0, i8* %1) #0 {
  %3 = alloca %struct.alps_fields*, align 8
  %4 = alloca i8*, align 8
  store %struct.alps_fields* %0, %struct.alps_fields** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = getelementptr inbounds i8, i8* %5, i64 4
  %7 = load i8, i8* %6, align 1
  %8 = zext i8 %7 to i32
  %9 = and i32 %8, 64
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = load %struct.alps_fields*, %struct.alps_fields** %3, align 8
  %15 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = and i32 %19, 64
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = load %struct.alps_fields*, %struct.alps_fields** %3, align 8
  %26 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = and i32 %30, 127
  %32 = shl i32 %31, 4
  %33 = load i8*, i8** %4, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 4
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = and i32 %36, 48
  %38 = ashr i32 %37, 2
  %39 = or i32 %32, %38
  %40 = load i8*, i8** %4, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = and i32 %43, 48
  %45 = ashr i32 %44, 4
  %46 = or i32 %39, %45
  %47 = trunc i32 %46 to i8
  %48 = load %struct.alps_fields*, %struct.alps_fields** %3, align 8
  %49 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %48, i32 0, i32 2
  store i8 %47, i8* %49, align 4
  %50 = load i8*, i8** %4, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 2
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = and i32 %53, 127
  %55 = shl i32 %54, 4
  %56 = load i8*, i8** %4, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 4
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = and i32 %59, 15
  %61 = or i32 %55, %60
  %62 = trunc i32 %61 to i8
  %63 = load %struct.alps_fields*, %struct.alps_fields** %3, align 8
  %64 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %63, i32 0, i32 3
  store i8 %62, i8* %64, align 1
  %65 = load i8*, i8** %4, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 5
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = and i32 %68, 127
  %70 = trunc i32 %69 to i8
  %71 = load %struct.alps_fields*, %struct.alps_fields** %3, align 8
  %72 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %71, i32 0, i32 4
  store i8 %70, i8* %72, align 2
  %73 = load %struct.alps_fields*, %struct.alps_fields** %3, align 8
  %74 = load i8*, i8** %4, align 8
  %75 = call i32 @alps_decode_buttons_v3(%struct.alps_fields* %73, i8* %74)
  ret void
}

declare dso_local i32 @alps_decode_buttons_v3(%struct.alps_fields*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
