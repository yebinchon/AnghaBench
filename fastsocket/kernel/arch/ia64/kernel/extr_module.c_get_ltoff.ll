; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_module.c_get_ltoff.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_module.c_get_ltoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }
%struct.got_entry = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.module*, i64, i32*)* @get_ltoff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_ltoff(%struct.module* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.module*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.got_entry*, align 8
  %9 = alloca %struct.got_entry*, align 8
  store %struct.module* %0, %struct.module** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %80

14:                                               ; preds = %3
  %15 = load %struct.module*, %struct.module** %5, align 8
  %16 = getelementptr inbounds %struct.module, %struct.module* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = bitcast i8* %21 to %struct.got_entry*
  store %struct.got_entry* %22, %struct.got_entry** %8, align 8
  %23 = load %struct.got_entry*, %struct.got_entry** %8, align 8
  store %struct.got_entry* %23, %struct.got_entry** %9, align 8
  br label %24

24:                                               ; preds = %42, %14
  %25 = load %struct.got_entry*, %struct.got_entry** %9, align 8
  %26 = load %struct.got_entry*, %struct.got_entry** %8, align 8
  %27 = load %struct.module*, %struct.module** %5, align 8
  %28 = getelementptr inbounds %struct.module, %struct.module* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.got_entry, %struct.got_entry* %26, i64 %31
  %33 = icmp ult %struct.got_entry* %25, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %24
  %35 = load %struct.got_entry*, %struct.got_entry** %9, align 8
  %36 = getelementptr inbounds %struct.got_entry, %struct.got_entry* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %6, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %72

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.got_entry*, %struct.got_entry** %9, align 8
  %44 = getelementptr inbounds %struct.got_entry, %struct.got_entry* %43, i32 1
  store %struct.got_entry* %44, %struct.got_entry** %9, align 8
  br label %24

45:                                               ; preds = %24
  %46 = load %struct.got_entry*, %struct.got_entry** %9, align 8
  %47 = load %struct.module*, %struct.module** %5, align 8
  %48 = getelementptr inbounds %struct.module, %struct.module* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.module*, %struct.module** %5, align 8
  %54 = getelementptr inbounds %struct.module, %struct.module* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %52, %58
  %60 = inttoptr i64 %59 to %struct.got_entry*
  %61 = icmp uge %struct.got_entry* %46, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 @BUG_ON(i32 %62)
  %64 = load i64, i64* %6, align 8
  %65 = load %struct.got_entry*, %struct.got_entry** %9, align 8
  %66 = getelementptr inbounds %struct.got_entry, %struct.got_entry* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load %struct.module*, %struct.module** %5, align 8
  %68 = getelementptr inbounds %struct.module, %struct.module* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 8
  br label %72

72:                                               ; preds = %45, %40
  %73 = load %struct.got_entry*, %struct.got_entry** %9, align 8
  %74 = ptrtoint %struct.got_entry* %73 to i64
  %75 = load %struct.module*, %struct.module** %5, align 8
  %76 = getelementptr inbounds %struct.module, %struct.module* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = sub nsw i64 %74, %78
  store i64 %79, i64* %4, align 8
  br label %80

80:                                               ; preds = %72, %13
  %81 = load i64, i64* %4, align 8
  ret i64 %81
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
