; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/cavium-octeon/executive/extr_cvmx-bootmem.c___cvmx_bootmem_phy_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/cavium-octeon/executive/extr_cvmx-bootmem.c___cvmx_bootmem_phy_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64 }

@cvmx_bootmem_desc = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [67 x i8] c"ERROR: Incompatible bootmem descriptor version: %d.%d at addr: %p\0A\00", align 1
@CVMX_BOOTMEM_FLAG_NO_LOCKING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__cvmx_bootmem_phy_free(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_bootmem_desc, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sgt i32 %13, 3
  br i1 %14, label %15, label %25

15:                                               ; preds = %3
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_bootmem_desc, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_bootmem_desc, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_bootmem_desc, align 8
  %24 = call i32 (i8*, i32, i32, ...) @cvmx_dprintf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %22, %struct.TYPE_2__* %23)
  store i32 0, i32* %4, align 4
  br label %202

25:                                               ; preds = %3
  %26 = load i64, i64* %6, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %202

29:                                               ; preds = %25
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @CVMX_BOOTMEM_FLAG_NO_LOCKING, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = call i32 (...) @cvmx_bootmem_lock()
  br label %36

36:                                               ; preds = %34, %29
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_bootmem_desc, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %8, align 8
  %40 = load i64, i64* %8, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %36
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* %8, align 8
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %46, label %88

46:                                               ; preds = %42, %36
  %47 = load i64, i64* %8, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %46
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* %6, align 8
  %52 = add nsw i64 %50, %51
  %53 = load i64, i64* %8, align 8
  %54 = icmp sgt i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %193

56:                                               ; preds = %49, %46
  %57 = load i64, i64* %5, align 8
  %58 = load i64, i64* %6, align 8
  %59 = add nsw i64 %57, %58
  %60 = load i64, i64* %8, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %76

62:                                               ; preds = %56
  %63 = load i64, i64* %5, align 8
  %64 = load i64, i64* %8, align 8
  %65 = call i64 @cvmx_bootmem_phy_get_next(i64 %64)
  %66 = call i32 @cvmx_bootmem_phy_set_next(i64 %63, i64 %65)
  %67 = load i64, i64* %5, align 8
  %68 = load i64, i64* %8, align 8
  %69 = call i64 @cvmx_bootmem_phy_get_size(i64 %68)
  %70 = load i64, i64* %6, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @cvmx_bootmem_phy_set_size(i64 %67, i64 %71)
  %73 = load i64, i64* %5, align 8
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_bootmem_desc, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  store i64 %73, i64* %75, align 8
  br label %86

76:                                               ; preds = %56
  %77 = load i64, i64* %5, align 8
  %78 = load i64, i64* %8, align 8
  %79 = call i32 @cvmx_bootmem_phy_set_next(i64 %77, i64 %78)
  %80 = load i64, i64* %5, align 8
  %81 = load i64, i64* %6, align 8
  %82 = call i32 @cvmx_bootmem_phy_set_size(i64 %80, i64 %81)
  %83 = load i64, i64* %5, align 8
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_bootmem_desc, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  store i64 %83, i64* %85, align 8
  br label %86

86:                                               ; preds = %76, %62
  br label %87

87:                                               ; preds = %86
  store i32 1, i32* %10, align 4
  br label %193

88:                                               ; preds = %42
  br label %89

89:                                               ; preds = %98, %88
  %90 = load i64, i64* %8, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load i64, i64* %5, align 8
  %94 = load i64, i64* %8, align 8
  %95 = icmp sgt i64 %93, %94
  br label %96

96:                                               ; preds = %92, %89
  %97 = phi i1 [ false, %89 ], [ %95, %92 ]
  br i1 %97, label %98, label %102

98:                                               ; preds = %96
  %99 = load i64, i64* %8, align 8
  store i64 %99, i64* %9, align 8
  %100 = load i64, i64* %8, align 8
  %101 = call i64 @cvmx_bootmem_phy_get_next(i64 %100)
  store i64 %101, i64* %8, align 8
  br label %89

102:                                              ; preds = %96
  %103 = load i64, i64* %8, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %129, label %105

105:                                              ; preds = %102
  %106 = load i64, i64* %9, align 8
  %107 = load i64, i64* %9, align 8
  %108 = call i64 @cvmx_bootmem_phy_get_size(i64 %107)
  %109 = add nsw i64 %106, %108
  %110 = load i64, i64* %5, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %119

112:                                              ; preds = %105
  %113 = load i64, i64* %9, align 8
  %114 = load i64, i64* %9, align 8
  %115 = call i64 @cvmx_bootmem_phy_get_size(i64 %114)
  %116 = load i64, i64* %6, align 8
  %117 = add nsw i64 %115, %116
  %118 = call i32 @cvmx_bootmem_phy_set_size(i64 %113, i64 %117)
  br label %128

119:                                              ; preds = %105
  %120 = load i64, i64* %9, align 8
  %121 = load i64, i64* %5, align 8
  %122 = call i32 @cvmx_bootmem_phy_set_next(i64 %120, i64 %121)
  %123 = load i64, i64* %5, align 8
  %124 = load i64, i64* %6, align 8
  %125 = call i32 @cvmx_bootmem_phy_set_size(i64 %123, i64 %124)
  %126 = load i64, i64* %5, align 8
  %127 = call i32 @cvmx_bootmem_phy_set_next(i64 %126, i64 0)
  br label %128

128:                                              ; preds = %119, %112
  store i32 1, i32* %10, align 4
  br label %193

129:                                              ; preds = %102
  %130 = load i64, i64* %9, align 8
  %131 = load i64, i64* %9, align 8
  %132 = call i64 @cvmx_bootmem_phy_get_size(i64 %131)
  %133 = add nsw i64 %130, %132
  %134 = load i64, i64* %5, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %161

136:                                              ; preds = %129
  %137 = load i64, i64* %9, align 8
  %138 = load i64, i64* %9, align 8
  %139 = call i64 @cvmx_bootmem_phy_get_size(i64 %138)
  %140 = load i64, i64* %6, align 8
  %141 = add nsw i64 %139, %140
  %142 = call i32 @cvmx_bootmem_phy_set_size(i64 %137, i64 %141)
  %143 = load i64, i64* %5, align 8
  %144 = load i64, i64* %6, align 8
  %145 = add nsw i64 %143, %144
  %146 = load i64, i64* %8, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %160

148:                                              ; preds = %136
  %149 = load i64, i64* %9, align 8
  %150 = load i64, i64* %8, align 8
  %151 = call i64 @cvmx_bootmem_phy_get_size(i64 %150)
  %152 = load i64, i64* %9, align 8
  %153 = call i64 @cvmx_bootmem_phy_get_size(i64 %152)
  %154 = add nsw i64 %151, %153
  %155 = call i32 @cvmx_bootmem_phy_set_size(i64 %149, i64 %154)
  %156 = load i64, i64* %9, align 8
  %157 = load i64, i64* %8, align 8
  %158 = call i64 @cvmx_bootmem_phy_get_next(i64 %157)
  %159 = call i32 @cvmx_bootmem_phy_set_next(i64 %156, i64 %158)
  br label %160

160:                                              ; preds = %148, %136
  store i32 1, i32* %10, align 4
  br label %193

161:                                              ; preds = %129
  %162 = load i64, i64* %5, align 8
  %163 = load i64, i64* %6, align 8
  %164 = add nsw i64 %162, %163
  %165 = load i64, i64* %8, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %181

167:                                              ; preds = %161
  %168 = load i64, i64* %5, align 8
  %169 = load i64, i64* %8, align 8
  %170 = call i64 @cvmx_bootmem_phy_get_size(i64 %169)
  %171 = load i64, i64* %6, align 8
  %172 = add nsw i64 %170, %171
  %173 = call i32 @cvmx_bootmem_phy_set_size(i64 %168, i64 %172)
  %174 = load i64, i64* %5, align 8
  %175 = load i64, i64* %8, align 8
  %176 = call i64 @cvmx_bootmem_phy_get_next(i64 %175)
  %177 = call i32 @cvmx_bootmem_phy_set_next(i64 %174, i64 %176)
  %178 = load i64, i64* %9, align 8
  %179 = load i64, i64* %5, align 8
  %180 = call i32 @cvmx_bootmem_phy_set_next(i64 %178, i64 %179)
  store i32 1, i32* %10, align 4
  br label %193

181:                                              ; preds = %161
  br label %182

182:                                              ; preds = %181
  %183 = load i64, i64* %5, align 8
  %184 = load i64, i64* %6, align 8
  %185 = call i32 @cvmx_bootmem_phy_set_size(i64 %183, i64 %184)
  %186 = load i64, i64* %5, align 8
  %187 = load i64, i64* %8, align 8
  %188 = call i32 @cvmx_bootmem_phy_set_next(i64 %186, i64 %187)
  %189 = load i64, i64* %9, align 8
  %190 = load i64, i64* %5, align 8
  %191 = call i32 @cvmx_bootmem_phy_set_next(i64 %189, i64 %190)
  br label %192

192:                                              ; preds = %182
  store i32 1, i32* %10, align 4
  br label %193

193:                                              ; preds = %192, %167, %160, %128, %87, %55
  %194 = load i32, i32* %7, align 4
  %195 = load i32, i32* @CVMX_BOOTMEM_FLAG_NO_LOCKING, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %200, label %198

198:                                              ; preds = %193
  %199 = call i32 (...) @cvmx_bootmem_unlock()
  br label %200

200:                                              ; preds = %198, %193
  %201 = load i32, i32* %10, align 4
  store i32 %201, i32* %4, align 4
  br label %202

202:                                              ; preds = %200, %28, %15
  %203 = load i32, i32* %4, align 4
  ret i32 %203
}

declare dso_local i32 @cvmx_dprintf(i8*, i32, i32, ...) #1

declare dso_local i32 @cvmx_bootmem_lock(...) #1

declare dso_local i32 @cvmx_bootmem_phy_set_next(i64, i64) #1

declare dso_local i64 @cvmx_bootmem_phy_get_next(i64) #1

declare dso_local i32 @cvmx_bootmem_phy_set_size(i64, i64) #1

declare dso_local i64 @cvmx_bootmem_phy_get_size(i64) #1

declare dso_local i32 @cvmx_bootmem_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
