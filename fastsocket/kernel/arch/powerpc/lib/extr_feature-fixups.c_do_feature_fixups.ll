; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/lib/extr_feature-fixups.c_do_feature_fixups.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/lib/extr_feature-fixups.c_do_feature_fixups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fixup_entry = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [57 x i8] c"Unable to patch feature section at %p - %p with %p - %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_feature_fixups(i64 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fixup_entry*, align 8
  %8 = alloca %struct.fixup_entry*, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.fixup_entry*
  store %struct.fixup_entry* %10, %struct.fixup_entry** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.fixup_entry*
  store %struct.fixup_entry* %12, %struct.fixup_entry** %8, align 8
  br label %13

13:                                               ; preds = %46, %3
  %14 = load %struct.fixup_entry*, %struct.fixup_entry** %7, align 8
  %15 = load %struct.fixup_entry*, %struct.fixup_entry** %8, align 8
  %16 = icmp ult %struct.fixup_entry* %14, %15
  br i1 %16, label %17, label %49

17:                                               ; preds = %13
  %18 = load i64, i64* %4, align 8
  %19 = load %struct.fixup_entry*, %struct.fixup_entry** %7, align 8
  %20 = call i64 @patch_feature_section(i64 %18, %struct.fixup_entry* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %45

22:                                               ; preds = %17
  %23 = call i32 @WARN_ON(i32 1)
  %24 = load %struct.fixup_entry*, %struct.fixup_entry** %7, align 8
  %25 = load %struct.fixup_entry*, %struct.fixup_entry** %7, align 8
  %26 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @calc_addr(%struct.fixup_entry* %24, i32 %27)
  %29 = load %struct.fixup_entry*, %struct.fixup_entry** %7, align 8
  %30 = load %struct.fixup_entry*, %struct.fixup_entry** %7, align 8
  %31 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @calc_addr(%struct.fixup_entry* %29, i32 %32)
  %34 = load %struct.fixup_entry*, %struct.fixup_entry** %7, align 8
  %35 = load %struct.fixup_entry*, %struct.fixup_entry** %7, align 8
  %36 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @calc_addr(%struct.fixup_entry* %34, i32 %37)
  %39 = load %struct.fixup_entry*, %struct.fixup_entry** %7, align 8
  %40 = load %struct.fixup_entry*, %struct.fixup_entry** %7, align 8
  %41 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @calc_addr(%struct.fixup_entry* %39, i32 %42)
  %44 = call i32 @printk(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %33, i32 %38, i32 %43)
  br label %45

45:                                               ; preds = %22, %17
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.fixup_entry*, %struct.fixup_entry** %7, align 8
  %48 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %47, i32 1
  store %struct.fixup_entry* %48, %struct.fixup_entry** %7, align 8
  br label %13

49:                                               ; preds = %13
  ret void
}

declare dso_local i64 @patch_feature_section(i64, %struct.fixup_entry*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @printk(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @calc_addr(%struct.fixup_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
