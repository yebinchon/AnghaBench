; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_machine_kexec_64.c_default_machine_kexec_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_machine_kexec_64.c_default_machine_kexec_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.kimage = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }
%struct.device_node = type { i32 }

@ppc_md = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@ENOENT = common dso_local global i32 0, align 4
@_end = common dso_local global i64 0, align 8
@ETXTBSY = common dso_local global i32 0, align 4
@htab_address = common dso_local global i64 0, align 8
@htab_size_bytes = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"pci\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"linux,tce-base\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"linux,tce-size\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @default_machine_kexec_prepare(%struct.kimage* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kimage*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  store %struct.kimage* %0, %struct.kimage** %3, align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ppc_md, i32 0, i32 0), align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOENT, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %162

17:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %40, %17
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.kimage*, %struct.kimage** %3, align 8
  %21 = getelementptr inbounds %struct.kimage, %struct.kimage* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %43

24:                                               ; preds = %18
  %25 = load %struct.kimage*, %struct.kimage** %3, align 8
  %26 = getelementptr inbounds %struct.kimage, %struct.kimage* %25, i32 0, i32 1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @_end, align 8
  %34 = call i64 @__pa(i64 %33)
  %35 = icmp ult i64 %32, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %24
  %37 = load i32, i32* @ETXTBSY, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %162

39:                                               ; preds = %24
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %18

43:                                               ; preds = %18
  %44 = load i64, i64* @htab_address, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %92

46:                                               ; preds = %43
  %47 = load i64, i64* @htab_address, align 8
  %48 = call i64 @__pa(i64 %47)
  store i64 %48, i64* %7, align 8
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* @htab_size_bytes, align 8
  %51 = add i64 %49, %50
  store i64 %51, i64* %8, align 8
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %88, %46
  %53 = load i32, i32* %4, align 4
  %54 = load %struct.kimage*, %struct.kimage** %3, align 8
  %55 = getelementptr inbounds %struct.kimage, %struct.kimage* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %91

58:                                               ; preds = %52
  %59 = load %struct.kimage*, %struct.kimage** %3, align 8
  %60 = getelementptr inbounds %struct.kimage, %struct.kimage* %59, i32 0, i32 1
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %5, align 8
  %67 = load i64, i64* %5, align 8
  %68 = load %struct.kimage*, %struct.kimage** %3, align 8
  %69 = getelementptr inbounds %struct.kimage, %struct.kimage* %68, i32 0, i32 1
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = add i64 %67, %75
  store i64 %76, i64* %6, align 8
  %77 = load i64, i64* %5, align 8
  %78 = load i64, i64* %8, align 8
  %79 = icmp ult i64 %77, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %58
  %81 = load i64, i64* %6, align 8
  %82 = load i64, i64* %7, align 8
  %83 = icmp ugt i64 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = load i32, i32* @ETXTBSY, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %2, align 4
  br label %162

87:                                               ; preds = %80, %58
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %4, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %4, align 4
  br label %52

91:                                               ; preds = %52
  br label %92

92:                                               ; preds = %91, %43
  %93 = call %struct.device_node* @of_find_node_by_type(%struct.device_node* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %93, %struct.device_node** %9, align 8
  br label %94

94:                                               ; preds = %158, %92
  %95 = load %struct.device_node*, %struct.device_node** %9, align 8
  %96 = icmp ne %struct.device_node* %95, null
  br i1 %96, label %97, label %161

97:                                               ; preds = %94
  %98 = load %struct.device_node*, %struct.device_node** %9, align 8
  %99 = call i8* @of_get_property(%struct.device_node* %98, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32* null)
  %100 = bitcast i8* %99 to i64*
  store i64* %100, i64** %10, align 8
  %101 = load %struct.device_node*, %struct.device_node** %9, align 8
  %102 = call i8* @of_get_property(%struct.device_node* %101, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32* null)
  %103 = bitcast i8* %102 to i32*
  store i32* %103, i32** %11, align 8
  %104 = load i64*, i64** %10, align 8
  %105 = icmp eq i64* %104, null
  br i1 %105, label %109, label %106

106:                                              ; preds = %97
  %107 = load i32*, i32** %11, align 8
  %108 = icmp eq i32* %107, null
  br i1 %108, label %109, label %110

109:                                              ; preds = %106, %97
  br label %158

110:                                              ; preds = %106
  %111 = load i64*, i64** %10, align 8
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %7, align 8
  %113 = load i64, i64* %7, align 8
  %114 = load i32*, i32** %11, align 8
  %115 = load i32, i32* %114, align 4
  %116 = zext i32 %115 to i64
  %117 = add i64 %113, %116
  store i64 %117, i64* %8, align 8
  store i32 0, i32* %4, align 4
  br label %118

118:                                              ; preds = %154, %110
  %119 = load i32, i32* %4, align 4
  %120 = load %struct.kimage*, %struct.kimage** %3, align 8
  %121 = getelementptr inbounds %struct.kimage, %struct.kimage* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp slt i32 %119, %122
  br i1 %123, label %124, label %157

124:                                              ; preds = %118
  %125 = load %struct.kimage*, %struct.kimage** %3, align 8
  %126 = getelementptr inbounds %struct.kimage, %struct.kimage* %125, i32 0, i32 1
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %126, align 8
  %128 = load i32, i32* %4, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  store i64 %132, i64* %5, align 8
  %133 = load i64, i64* %5, align 8
  %134 = load %struct.kimage*, %struct.kimage** %3, align 8
  %135 = getelementptr inbounds %struct.kimage, %struct.kimage* %134, i32 0, i32 1
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %135, align 8
  %137 = load i32, i32* %4, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = add i64 %133, %141
  store i64 %142, i64* %6, align 8
  %143 = load i64, i64* %5, align 8
  %144 = load i64, i64* %8, align 8
  %145 = icmp ult i64 %143, %144
  br i1 %145, label %146, label %153

146:                                              ; preds = %124
  %147 = load i64, i64* %6, align 8
  %148 = load i64, i64* %7, align 8
  %149 = icmp ugt i64 %147, %148
  br i1 %149, label %150, label %153

150:                                              ; preds = %146
  %151 = load i32, i32* @ETXTBSY, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %2, align 4
  br label %162

153:                                              ; preds = %146, %124
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %4, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %4, align 4
  br label %118

157:                                              ; preds = %118
  br label %158

158:                                              ; preds = %157, %109
  %159 = load %struct.device_node*, %struct.device_node** %9, align 8
  %160 = call %struct.device_node* @of_find_node_by_type(%struct.device_node* %159, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %160, %struct.device_node** %9, align 8
  br label %94

161:                                              ; preds = %94
  store i32 0, i32* %2, align 4
  br label %162

162:                                              ; preds = %161, %150, %84, %36, %14
  %163 = load i32, i32* %2, align 4
  ret i32 %163
}

declare dso_local i64 @__pa(i64) #1

declare dso_local %struct.device_node* @of_find_node_by_type(%struct.device_node*, i8*) #1

declare dso_local i8* @of_get_property(%struct.device_node*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
