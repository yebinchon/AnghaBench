; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/boot/compressed/extr_relocs.c_print_absolute_relocs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/boot/compressed/extr_relocs.c_print_absolute_relocs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.section = type { i8*, %struct.TYPE_8__*, %struct.TYPE_6__, %struct.section*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64, i64, i32, i32 }
%struct.TYPE_7__ = type { i64, i32 }

@ehdr = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@secs = common dso_local global %struct.section* null, align 8
@SHT_REL = common dso_local global i64 0, align 8
@SHF_ALLOC = common dso_local global i32 0, align 4
@SHN_ABS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"WARNING: Absolute relocations present\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Offset     Info     Type     Sym.Value Sym.Name\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"%08x %08x %10s %08x  %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @print_absolute_relocs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_absolute_relocs() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.section*, align 8
  %4 = alloca %struct.section*, align 8
  %5 = alloca %struct.section*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i8*, align 8
  store i32 0, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %12

12:                                               ; preds = %119, %0
  %13 = load i32, i32* %1, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ehdr, i32 0, i32 0), align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %122

16:                                               ; preds = %12
  %17 = load %struct.section*, %struct.section** @secs, align 8
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.section, %struct.section* %17, i64 %19
  store %struct.section* %20, %struct.section** %3, align 8
  %21 = load %struct.section*, %struct.section** %3, align 8
  %22 = getelementptr inbounds %struct.section, %struct.section* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SHT_REL, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  br label %119

28:                                               ; preds = %16
  %29 = load %struct.section*, %struct.section** %3, align 8
  %30 = getelementptr inbounds %struct.section, %struct.section* %29, i32 0, i32 3
  %31 = load %struct.section*, %struct.section** %30, align 8
  store %struct.section* %31, %struct.section** %5, align 8
  %32 = load %struct.section*, %struct.section** @secs, align 8
  %33 = load %struct.section*, %struct.section** %3, align 8
  %34 = getelementptr inbounds %struct.section, %struct.section* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.section, %struct.section* %32, i64 %36
  store %struct.section* %37, %struct.section** %4, align 8
  %38 = load %struct.section*, %struct.section** %4, align 8
  %39 = getelementptr inbounds %struct.section, %struct.section* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @SHF_ALLOC, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %28
  br label %119

46:                                               ; preds = %28
  %47 = load %struct.section*, %struct.section** %5, align 8
  %48 = getelementptr inbounds %struct.section, %struct.section* %47, i32 0, i32 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  store %struct.TYPE_7__* %49, %struct.TYPE_7__** %7, align 8
  %50 = load %struct.section*, %struct.section** %5, align 8
  %51 = getelementptr inbounds %struct.section, %struct.section* %50, i32 0, i32 3
  %52 = load %struct.section*, %struct.section** %51, align 8
  %53 = getelementptr inbounds %struct.section, %struct.section* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** %6, align 8
  store i32 0, i32* %8, align 4
  br label %55

55:                                               ; preds = %115, %46
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = load %struct.section*, %struct.section** %3, align 8
  %59 = getelementptr inbounds %struct.section, %struct.section* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = udiv i64 %62, 8
  %64 = icmp ult i64 %57, %63
  br i1 %64, label %65, label %118

65:                                               ; preds = %55
  %66 = load %struct.section*, %struct.section** %3, align 8
  %67 = getelementptr inbounds %struct.section, %struct.section* %66, i32 0, i32 1
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i64 %70
  store %struct.TYPE_8__* %71, %struct.TYPE_8__** %9, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @ELF32_R_SYM(i32 %75)
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i64 %76
  store %struct.TYPE_7__* %77, %struct.TYPE_7__** %10, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %80 = call i8* @sym_name(i8* %78, %struct.TYPE_7__* %79)
  store i8* %80, i8** %11, align 8
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @SHN_ABS, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %65
  br label %115

87:                                               ; preds = %65
  %88 = load i8*, i8** %11, align 8
  %89 = call i64 @is_safe_abs_reloc(i8* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  br label %115

92:                                               ; preds = %87
  %93 = load i32, i32* %2, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %92
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %98

98:                                               ; preds = %95, %92
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @ELF32_R_TYPE(i32 %107)
  %109 = call i8* @rel_type(i32 %108)
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load i8*, i8** %11, align 8
  %114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %101, i32 %104, i8* %109, i32 %112, i8* %113)
  br label %115

115:                                              ; preds = %98, %91, %86
  %116 = load i32, i32* %8, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %8, align 4
  br label %55

118:                                              ; preds = %55
  br label %119

119:                                              ; preds = %118, %45, %27
  %120 = load i32, i32* %1, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %1, align 4
  br label %12

122:                                              ; preds = %12
  %123 = load i32, i32* %2, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %122
  %126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %127

127:                                              ; preds = %125, %122
  ret void
}

declare dso_local i64 @ELF32_R_SYM(i32) #1

declare dso_local i8* @sym_name(i8*, %struct.TYPE_7__*) #1

declare dso_local i64 @is_safe_abs_reloc(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @rel_type(i32) #1

declare dso_local i32 @ELF32_R_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
