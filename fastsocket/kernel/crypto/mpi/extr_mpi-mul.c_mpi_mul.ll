; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/mpi/extr_mpi-mul.c_mpi_mul.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/mpi/extr_mpi-mul.c_mpi_mul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i64, i64 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpi_mul(%struct.TYPE_7__* %0, %struct.TYPE_7__* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %6, align 8
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %7, align 4
  store i32 0, i32* %18, align 4
  store i64 0, i64* %19, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %24, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %3
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %8, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %15, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %11, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %9, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %16, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %12, align 8
  br label %67

48:                                               ; preds = %3
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %8, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %15, align 4
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %11, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %9, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %16, align 4
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %12, align 8
  br label %67

67:                                               ; preds = %48, %29
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* %16, align 4
  %70 = xor i32 %68, %69
  store i32 %70, i32* %17, align 4
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %13, align 8
  %74 = load i64, i64* %8, align 8
  %75 = load i64, i64* %9, align 8
  %76 = add nsw i64 %74, %75
  store i64 %76, i64* %10, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %10, align 8
  %81 = icmp ult i64 %79, %80
  br i1 %81, label %82, label %108

82:                                               ; preds = %67
  %83 = load i64, i64* %13, align 8
  %84 = load i64, i64* %11, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %90, label %86

86:                                               ; preds = %82
  %87 = load i64, i64* %13, align 8
  %88 = load i64, i64* %12, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %86, %82
  %91 = load i64, i64* %10, align 8
  %92 = call i64 @mpi_alloc_limb_space(i64 %91)
  store i64 %92, i64* %13, align 8
  %93 = load i64, i64* %13, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %90
  br label %182

96:                                               ; preds = %90
  store i32 1, i32* %18, align 4
  br label %107

97:                                               ; preds = %86
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %99 = load i64, i64* %10, align 8
  %100 = call i64 @mpi_resize(%struct.TYPE_7__* %98, i64 %99)
  %101 = icmp slt i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  br label %182

103:                                              ; preds = %97
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  store i64 %106, i64* %13, align 8
  br label %107

107:                                              ; preds = %103, %96
  br label %146

108:                                              ; preds = %67
  %109 = load i64, i64* %13, align 8
  %110 = load i64, i64* %11, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %129

112:                                              ; preds = %108
  %113 = load i64, i64* %8, align 8
  %114 = call i64 @mpi_alloc_limb_space(i64 %113)
  store i64 %114, i64* %19, align 8
  store i64 %114, i64* %11, align 8
  %115 = load i64, i64* %11, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %112
  br label %182

118:                                              ; preds = %112
  %119 = load i64, i64* %13, align 8
  %120 = load i64, i64* %12, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %118
  %123 = load i64, i64* %11, align 8
  store i64 %123, i64* %12, align 8
  br label %124

124:                                              ; preds = %122, %118
  %125 = load i64, i64* %11, align 8
  %126 = load i64, i64* %13, align 8
  %127 = load i64, i64* %8, align 8
  %128 = call i32 @MPN_COPY(i64 %125, i64 %126, i64 %127)
  br label %145

129:                                              ; preds = %108
  %130 = load i64, i64* %13, align 8
  %131 = load i64, i64* %12, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %144

133:                                              ; preds = %129
  %134 = load i64, i64* %9, align 8
  %135 = call i64 @mpi_alloc_limb_space(i64 %134)
  store i64 %135, i64* %19, align 8
  store i64 %135, i64* %12, align 8
  %136 = load i64, i64* %12, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %133
  br label %182

139:                                              ; preds = %133
  %140 = load i64, i64* %12, align 8
  %141 = load i64, i64* %13, align 8
  %142 = load i64, i64* %9, align 8
  %143 = call i32 @MPN_COPY(i64 %140, i64 %141, i64 %142)
  br label %144

144:                                              ; preds = %139, %129
  br label %145

145:                                              ; preds = %144, %124
  br label %146

146:                                              ; preds = %145, %107
  %147 = load i64, i64* %9, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %150, label %149

149:                                              ; preds = %146
  store i64 0, i64* %10, align 8
  br label %167

150:                                              ; preds = %146
  %151 = load i64, i64* %13, align 8
  %152 = load i64, i64* %11, align 8
  %153 = load i64, i64* %8, align 8
  %154 = load i64, i64* %12, align 8
  %155 = load i64, i64* %9, align 8
  %156 = call i64 @mpihelp_mul(i64 %151, i64 %152, i64 %153, i64 %154, i64 %155, i64* %14)
  %157 = icmp slt i64 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %150
  br label %182

159:                                              ; preds = %150
  %160 = load i64, i64* %14, align 8
  %161 = icmp ne i64 %160, 0
  %162 = zext i1 %161 to i64
  %163 = select i1 %161, i32 0, i32 1
  %164 = sext i32 %163 to i64
  %165 = load i64, i64* %10, align 8
  %166 = sub nsw i64 %165, %164
  store i64 %166, i64* %10, align 8
  br label %167

167:                                              ; preds = %159, %149
  %168 = load i32, i32* %18, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %167
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %172 = load i64, i64* %13, align 8
  %173 = load i64, i64* %10, align 8
  %174 = call i32 @mpi_assign_limb_space(%struct.TYPE_7__* %171, i64 %172, i64 %173)
  br label %175

175:                                              ; preds = %170, %167
  %176 = load i64, i64* %10, align 8
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 0
  store i64 %176, i64* %178, align 8
  %179 = load i32, i32* %17, align 4
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 1
  store i32 %179, i32* %181, align 8
  store i32 0, i32* %7, align 4
  br label %182

182:                                              ; preds = %175, %158, %138, %117, %102, %95
  %183 = load i64, i64* %19, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %182
  %186 = load i64, i64* %19, align 8
  %187 = call i32 @mpi_free_limb_space(i64 %186)
  br label %188

188:                                              ; preds = %185, %182
  %189 = load i32, i32* %7, align 4
  ret i32 %189
}

declare dso_local i64 @mpi_alloc_limb_space(i64) #1

declare dso_local i64 @mpi_resize(%struct.TYPE_7__*, i64) #1

declare dso_local i32 @MPN_COPY(i64, i64, i64) #1

declare dso_local i64 @mpihelp_mul(i64, i64, i64, i64, i64, i64*) #1

declare dso_local i32 @mpi_assign_limb_space(%struct.TYPE_7__*, i64, i64) #1

declare dso_local i32 @mpi_free_limb_space(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
