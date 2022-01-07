; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_dwarf.c_dwarf_parse_fde.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_dwarf.c_dwarf_parse_fde.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwarf_fde = type { i64, i64, i8*, i32, i8*, %struct.dwarf_cie*, i32, i32 }
%struct.dwarf_cie = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DWARF_CIE_Z_AUGMENTATION = common dso_local global i32 0, align 4
@dwarf_fde_lock = common dso_local global i32 0, align 4
@dwarf_fde_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i64, i8*)* @dwarf_parse_fde to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwarf_parse_fde(i8* %0, i8* %1, i8* %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.dwarf_fde*, align 8
  %13 = alloca %struct.dwarf_cie*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  %18 = load i8*, i8** %9, align 8
  store i8* %18, i8** %16, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.dwarf_fde* @kzalloc(i32 56, i32 %19)
  store %struct.dwarf_fde* %20, %struct.dwarf_fde** %12, align 8
  %21 = load %struct.dwarf_fde*, %struct.dwarf_fde** %12, align 8
  %22 = icmp ne %struct.dwarf_fde* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %121

26:                                               ; preds = %5
  %27 = load i64, i64* %10, align 8
  %28 = load %struct.dwarf_fde*, %struct.dwarf_fde** %12, align 8
  %29 = getelementptr inbounds %struct.dwarf_fde, %struct.dwarf_fde* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load i8*, i8** %16, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = ptrtoint i8* %30 to i64
  %33 = ptrtoint i8* %31 to i64
  %34 = sub i64 %32, %33
  %35 = sub nsw i64 %34, 4
  %36 = load %struct.dwarf_fde*, %struct.dwarf_fde** %12, align 8
  %37 = getelementptr inbounds %struct.dwarf_fde, %struct.dwarf_fde* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  %38 = load %struct.dwarf_fde*, %struct.dwarf_fde** %12, align 8
  %39 = getelementptr inbounds %struct.dwarf_fde, %struct.dwarf_fde* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call %struct.dwarf_cie* @dwarf_lookup_cie(i64 %40)
  store %struct.dwarf_cie* %41, %struct.dwarf_cie** %13, align 8
  %42 = load %struct.dwarf_cie*, %struct.dwarf_cie** %13, align 8
  %43 = load %struct.dwarf_fde*, %struct.dwarf_fde** %12, align 8
  %44 = getelementptr inbounds %struct.dwarf_fde, %struct.dwarf_fde* %43, i32 0, i32 5
  store %struct.dwarf_cie* %42, %struct.dwarf_cie** %44, align 8
  %45 = load %struct.dwarf_cie*, %struct.dwarf_cie** %13, align 8
  %46 = getelementptr inbounds %struct.dwarf_cie, %struct.dwarf_cie* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %26
  %50 = load i8*, i8** %16, align 8
  %51 = load %struct.dwarf_fde*, %struct.dwarf_fde** %12, align 8
  %52 = getelementptr inbounds %struct.dwarf_fde, %struct.dwarf_fde* %51, i32 0, i32 7
  %53 = load %struct.dwarf_cie*, %struct.dwarf_cie** %13, align 8
  %54 = getelementptr inbounds %struct.dwarf_cie, %struct.dwarf_cie* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @dwarf_read_encoded_value(i8* %50, i32* %52, i32 %55)
  store i32 %56, i32* %15, align 4
  br label %62

57:                                               ; preds = %26
  %58 = load i8*, i8** %16, align 8
  %59 = load %struct.dwarf_fde*, %struct.dwarf_fde** %12, align 8
  %60 = getelementptr inbounds %struct.dwarf_fde, %struct.dwarf_fde* %59, i32 0, i32 7
  %61 = call i32 @dwarf_read_addr(i8* %58, i32* %60)
  store i32 %61, i32* %15, align 4
  br label %62

62:                                               ; preds = %57, %49
  %63 = load i32, i32* %15, align 4
  %64 = load i8*, i8** %16, align 8
  %65 = sext i32 %63 to i64
  %66 = getelementptr i8, i8* %64, i64 %65
  store i8* %66, i8** %16, align 8
  %67 = load %struct.dwarf_cie*, %struct.dwarf_cie** %13, align 8
  %68 = getelementptr inbounds %struct.dwarf_cie, %struct.dwarf_cie* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %62
  %72 = load i8*, i8** %16, align 8
  %73 = load %struct.dwarf_fde*, %struct.dwarf_fde** %12, align 8
  %74 = getelementptr inbounds %struct.dwarf_fde, %struct.dwarf_fde* %73, i32 0, i32 6
  %75 = load %struct.dwarf_cie*, %struct.dwarf_cie** %13, align 8
  %76 = getelementptr inbounds %struct.dwarf_cie, %struct.dwarf_cie* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, 15
  %79 = call i32 @dwarf_read_encoded_value(i8* %72, i32* %74, i32 %78)
  store i32 %79, i32* %15, align 4
  br label %85

80:                                               ; preds = %62
  %81 = load i8*, i8** %16, align 8
  %82 = load %struct.dwarf_fde*, %struct.dwarf_fde** %12, align 8
  %83 = getelementptr inbounds %struct.dwarf_fde, %struct.dwarf_fde* %82, i32 0, i32 6
  %84 = call i32 @dwarf_read_addr(i8* %81, i32* %83)
  store i32 %84, i32* %15, align 4
  br label %85

85:                                               ; preds = %80, %71
  %86 = load i32, i32* %15, align 4
  %87 = load i8*, i8** %16, align 8
  %88 = sext i32 %86 to i64
  %89 = getelementptr i8, i8* %87, i64 %88
  store i8* %89, i8** %16, align 8
  %90 = load %struct.dwarf_fde*, %struct.dwarf_fde** %12, align 8
  %91 = getelementptr inbounds %struct.dwarf_fde, %struct.dwarf_fde* %90, i32 0, i32 5
  %92 = load %struct.dwarf_cie*, %struct.dwarf_cie** %91, align 8
  %93 = getelementptr inbounds %struct.dwarf_cie, %struct.dwarf_cie* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @DWARF_CIE_Z_AUGMENTATION, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %85
  %99 = load i8*, i8** %16, align 8
  %100 = call i32 @dwarf_read_uleb128(i8* %99, i32* %17)
  store i32 %100, i32* %15, align 4
  %101 = load i32, i32* %15, align 4
  %102 = load i32, i32* %17, align 4
  %103 = add i32 %101, %102
  %104 = load i8*, i8** %16, align 8
  %105 = zext i32 %103 to i64
  %106 = getelementptr i8, i8* %104, i64 %105
  store i8* %106, i8** %16, align 8
  br label %107

107:                                              ; preds = %98, %85
  %108 = load i8*, i8** %16, align 8
  %109 = load %struct.dwarf_fde*, %struct.dwarf_fde** %12, align 8
  %110 = getelementptr inbounds %struct.dwarf_fde, %struct.dwarf_fde* %109, i32 0, i32 4
  store i8* %108, i8** %110, align 8
  %111 = load i8*, i8** %11, align 8
  %112 = load %struct.dwarf_fde*, %struct.dwarf_fde** %12, align 8
  %113 = getelementptr inbounds %struct.dwarf_fde, %struct.dwarf_fde* %112, i32 0, i32 2
  store i8* %111, i8** %113, align 8
  %114 = load i64, i64* %14, align 8
  %115 = call i32 @spin_lock_irqsave(i32* @dwarf_fde_lock, i64 %114)
  %116 = load %struct.dwarf_fde*, %struct.dwarf_fde** %12, align 8
  %117 = getelementptr inbounds %struct.dwarf_fde, %struct.dwarf_fde* %116, i32 0, i32 3
  %118 = call i32 @list_add_tail(i32* %117, i32* @dwarf_fde_list)
  %119 = load i64, i64* %14, align 8
  %120 = call i32 @spin_unlock_irqrestore(i32* @dwarf_fde_lock, i64 %119)
  store i32 0, i32* %6, align 4
  br label %121

121:                                              ; preds = %107, %23
  %122 = load i32, i32* %6, align 4
  ret i32 %122
}

declare dso_local %struct.dwarf_fde* @kzalloc(i32, i32) #1

declare dso_local %struct.dwarf_cie* @dwarf_lookup_cie(i64) #1

declare dso_local i32 @dwarf_read_encoded_value(i8*, i32*, i32) #1

declare dso_local i32 @dwarf_read_addr(i8*, i32*) #1

declare dso_local i32 @dwarf_read_uleb128(i8*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
