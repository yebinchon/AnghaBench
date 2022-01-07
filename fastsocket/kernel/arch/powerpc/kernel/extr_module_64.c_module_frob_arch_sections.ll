; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_module_64.c_module_frob_arch_sections.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_module_64.c_module_frob_arch_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i64, i64 }
%struct.module = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c".stubs\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c".toc\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"__versions\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c".init\00", align 1
@SHT_SYMTAB = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"%s: doesn't contain .stubs.\0A\00", align 1
@ENOEXEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @module_frob_arch_sections(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, i8* %2, %struct.module* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.module*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.module* %3, %struct.module** %9, align 8
  store i32 1, i32* %10, align 4
  br label %12

12:                                               ; preds = %145, %4
  %13 = load i32, i32* %10, align 4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ult i32 %13, %16
  br i1 %17, label %18, label %148

18:                                               ; preds = %12
  %19 = load i8*, i8** %8, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %21 = load i32, i32* %10, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %19, i64 %26
  %28 = call i64 @strcmp(i8* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %18
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.module*, %struct.module** %9, align 8
  %33 = getelementptr inbounds %struct.module, %struct.module* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  br label %84

35:                                               ; preds = %18
  %36 = load i8*, i8** %8, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %38 = load i32, i32* %10, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %36, i64 %43
  %45 = call i64 @strcmp(i8* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %35
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.module*, %struct.module** %9, align 8
  %50 = getelementptr inbounds %struct.module, %struct.module* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 4
  br label %83

52:                                               ; preds = %35
  %53 = load i8*, i8** %8, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %55 = load i32, i32* %10, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %53, i64 %60
  %62 = call i64 @strcmp(i8* %61, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %82

64:                                               ; preds = %52
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %66 = bitcast %struct.TYPE_10__* %65 to i8*
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %68 = load i32, i32* %10, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr i8, i8* %66, i64 %73
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %76 = load i32, i32* %10, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @dedotify_versions(i8* %74, i32 %80)
  br label %82

82:                                               ; preds = %64, %52
  br label %83

83:                                               ; preds = %82, %47
  br label %84

84:                                               ; preds = %83, %30
  br label %85

85:                                               ; preds = %97, %84
  %86 = load i8*, i8** %8, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %88 = load i32, i32* %10, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %86, i64 %93
  %95 = call i8* @strstr(i8* %94, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i8* %95, i8** %11, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %85
  %98 = load i8*, i8** %11, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 0
  store i8 95, i8* %99, align 1
  br label %85

100:                                              ; preds = %85
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %102 = load i32, i32* %10, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @SHT_SYMTAB, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %144

109:                                              ; preds = %100
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %111 = bitcast %struct.TYPE_10__* %110 to i8*
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %113 = load i32, i32* %10, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr i8, i8* %111, i64 %118
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %121 = load i32, i32* %10, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = sext i32 %125 to i64
  %127 = udiv i64 %126, 4
  %128 = trunc i64 %127 to i32
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %130 = bitcast %struct.TYPE_10__* %129 to i8*
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %133 = load i32, i32* %10, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 4
  %137 = load i64, i64* %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr i8, i8* %130, i64 %141
  %143 = call i32 @dedotify(i8* %119, i32 %128, i8* %142)
  br label %144

144:                                              ; preds = %109, %100
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %10, align 4
  %147 = add i32 %146, 1
  store i32 %147, i32* %10, align 4
  br label %12

148:                                              ; preds = %12
  %149 = load %struct.module*, %struct.module** %9, align 8
  %150 = getelementptr inbounds %struct.module, %struct.module* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %161, label %154

154:                                              ; preds = %148
  %155 = load %struct.module*, %struct.module** %9, align 8
  %156 = getelementptr inbounds %struct.module, %struct.module* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %157)
  %159 = load i32, i32* @ENOEXEC, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %5, align 4
  br label %187

161:                                              ; preds = %148
  %162 = load %struct.module*, %struct.module** %9, align 8
  %163 = getelementptr inbounds %struct.module, %struct.module* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %175, label %167

167:                                              ; preds = %161
  %168 = load %struct.module*, %struct.module** %9, align 8
  %169 = getelementptr inbounds %struct.module, %struct.module* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.module*, %struct.module** %9, align 8
  %173 = getelementptr inbounds %struct.module, %struct.module* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 1
  store i32 %171, i32* %174, align 4
  br label %175

175:                                              ; preds = %167, %161
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %178 = call i32 @get_stubs_size(%struct.TYPE_10__* %176, %struct.TYPE_9__* %177)
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %180 = load %struct.module*, %struct.module** %9, align 8
  %181 = getelementptr inbounds %struct.module, %struct.module* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 2
  store i32 %178, i32* %186, align 8
  store i32 0, i32* %5, align 4
  br label %187

187:                                              ; preds = %175, %154
  %188 = load i32, i32* %5, align 4
  ret i32 %188
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @dedotify_versions(i8*, i32) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @dedotify(i8*, i32, i8*) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @get_stubs_size(%struct.TYPE_10__*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
