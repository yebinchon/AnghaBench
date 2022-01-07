; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_dwarf.c_dwarf_parse_cie.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_dwarf.c_dwarf_parse_cie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwarf_cie = type { i64, i64, i8, i8*, i32, i32, i8, i8*, i32, i8*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DWARF_CIE_Z_AUGMENTATION = common dso_local global i32 0, align 4
@dwarf_cie_lock = common dso_local global i32 0, align 4
@dwarf_cie_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64, i8*)* @dwarf_parse_cie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwarf_parse_cie(i8* %0, i8* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.dwarf_cie*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.dwarf_cie* @kzalloc(i32 80, i32 %15)
  store %struct.dwarf_cie* %16, %struct.dwarf_cie** %10, align 8
  %17 = load %struct.dwarf_cie*, %struct.dwarf_cie** %10, align 8
  %18 = icmp ne %struct.dwarf_cie* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %210

22:                                               ; preds = %4
  %23 = load i64, i64* %8, align 8
  %24 = load %struct.dwarf_cie*, %struct.dwarf_cie** %10, align 8
  %25 = getelementptr inbounds %struct.dwarf_cie, %struct.dwarf_cie* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = ptrtoint i8* %26 to i64
  %28 = load %struct.dwarf_cie*, %struct.dwarf_cie** %10, align 8
  %29 = getelementptr inbounds %struct.dwarf_cie, %struct.dwarf_cie* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %7, align 8
  %32 = load i8, i8* %30, align 1
  %33 = load %struct.dwarf_cie*, %struct.dwarf_cie** %10, align 8
  %34 = getelementptr inbounds %struct.dwarf_cie, %struct.dwarf_cie* %33, i32 0, i32 2
  store i8 %32, i8* %34, align 8
  %35 = load %struct.dwarf_cie*, %struct.dwarf_cie** %10, align 8
  %36 = getelementptr inbounds %struct.dwarf_cie, %struct.dwarf_cie* %35, i32 0, i32 2
  %37 = load i8, i8* %36, align 8
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 1
  %40 = zext i1 %39 to i32
  %41 = call i32 @UNWINDER_BUG_ON(i32 %40)
  %42 = load i8*, i8** %7, align 8
  %43 = load %struct.dwarf_cie*, %struct.dwarf_cie** %10, align 8
  %44 = getelementptr inbounds %struct.dwarf_cie, %struct.dwarf_cie* %43, i32 0, i32 3
  store i8* %42, i8** %44, align 8
  %45 = load %struct.dwarf_cie*, %struct.dwarf_cie** %10, align 8
  %46 = getelementptr inbounds %struct.dwarf_cie, %struct.dwarf_cie* %45, i32 0, i32 3
  %47 = load i8*, i8** %46, align 8
  %48 = call i64 @strlen(i8* %47)
  %49 = add nsw i64 %48, 1
  %50 = load i8*, i8** %7, align 8
  %51 = getelementptr i8, i8* %50, i64 %49
  store i8* %51, i8** %7, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = load %struct.dwarf_cie*, %struct.dwarf_cie** %10, align 8
  %54 = getelementptr inbounds %struct.dwarf_cie, %struct.dwarf_cie* %53, i32 0, i32 4
  %55 = call i8* @dwarf_read_uleb128(i8* %52, i32* %54)
  %56 = ptrtoint i8* %55 to i32
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i8*, i8** %7, align 8
  %59 = sext i32 %57 to i64
  %60 = getelementptr i8, i8* %58, i64 %59
  store i8* %60, i8** %7, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = load %struct.dwarf_cie*, %struct.dwarf_cie** %10, align 8
  %63 = getelementptr inbounds %struct.dwarf_cie, %struct.dwarf_cie* %62, i32 0, i32 11
  %64 = call i32 @dwarf_read_leb128(i8* %61, i32* %63)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load i8*, i8** %7, align 8
  %67 = sext i32 %65 to i64
  %68 = getelementptr i8, i8* %66, i64 %67
  store i8* %68, i8** %7, align 8
  %69 = load %struct.dwarf_cie*, %struct.dwarf_cie** %10, align 8
  %70 = getelementptr inbounds %struct.dwarf_cie, %struct.dwarf_cie* %69, i32 0, i32 2
  %71 = load i8, i8* %70, align 8
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %74, label %81

74:                                               ; preds = %22
  %75 = load i8*, i8** %7, align 8
  %76 = call i32 @__raw_readb(i8* %75)
  %77 = load %struct.dwarf_cie*, %struct.dwarf_cie** %10, align 8
  %78 = getelementptr inbounds %struct.dwarf_cie, %struct.dwarf_cie* %77, i32 0, i32 5
  store i32 %76, i32* %78, align 4
  %79 = load i8*, i8** %7, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %7, align 8
  br label %91

81:                                               ; preds = %22
  %82 = load i8*, i8** %7, align 8
  %83 = load %struct.dwarf_cie*, %struct.dwarf_cie** %10, align 8
  %84 = getelementptr inbounds %struct.dwarf_cie, %struct.dwarf_cie* %83, i32 0, i32 5
  %85 = call i8* @dwarf_read_uleb128(i8* %82, i32* %84)
  %86 = ptrtoint i8* %85 to i32
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %12, align 4
  %88 = load i8*, i8** %7, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr i8, i8* %88, i64 %89
  store i8* %90, i8** %7, align 8
  br label %91

91:                                               ; preds = %81, %74
  %92 = load %struct.dwarf_cie*, %struct.dwarf_cie** %10, align 8
  %93 = getelementptr inbounds %struct.dwarf_cie, %struct.dwarf_cie* %92, i32 0, i32 3
  %94 = load i8*, i8** %93, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 0
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 122
  br i1 %98, label %99, label %127

99:                                               ; preds = %91
  %100 = load i32, i32* @DWARF_CIE_Z_AUGMENTATION, align 4
  %101 = load %struct.dwarf_cie*, %struct.dwarf_cie** %10, align 8
  %102 = getelementptr inbounds %struct.dwarf_cie, %struct.dwarf_cie* %101, i32 0, i32 10
  %103 = load i32, i32* %102, align 8
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 8
  %105 = load i8*, i8** %7, align 8
  %106 = call i8* @dwarf_read_uleb128(i8* %105, i32* %13)
  %107 = ptrtoint i8* %106 to i32
  store i32 %107, i32* %14, align 4
  %108 = load i32, i32* %14, align 4
  %109 = load i8*, i8** %7, align 8
  %110 = zext i32 %108 to i64
  %111 = getelementptr i8, i8* %109, i64 %110
  store i8* %111, i8** %7, align 8
  %112 = load i8*, i8** %7, align 8
  %113 = load i8*, i8** %9, align 8
  %114 = icmp ugt i8* %112, %113
  %115 = zext i1 %114 to i32
  %116 = call i32 @UNWINDER_BUG_ON(i32 %115)
  %117 = load i8*, i8** %7, align 8
  %118 = load i32, i32* %13, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr i8, i8* %117, i64 %119
  %121 = load %struct.dwarf_cie*, %struct.dwarf_cie** %10, align 8
  %122 = getelementptr inbounds %struct.dwarf_cie, %struct.dwarf_cie* %121, i32 0, i32 9
  store i8* %120, i8** %122, align 8
  %123 = load %struct.dwarf_cie*, %struct.dwarf_cie** %10, align 8
  %124 = getelementptr inbounds %struct.dwarf_cie, %struct.dwarf_cie* %123, i32 0, i32 3
  %125 = load i8*, i8** %124, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %124, align 8
  br label %127

127:                                              ; preds = %99, %91
  br label %128

128:                                              ; preds = %195, %127
  %129 = load %struct.dwarf_cie*, %struct.dwarf_cie** %10, align 8
  %130 = getelementptr inbounds %struct.dwarf_cie, %struct.dwarf_cie* %129, i32 0, i32 3
  %131 = load i8*, i8** %130, align 8
  %132 = load i8, i8* %131, align 1
  %133 = icmp ne i8 %132, 0
  br i1 %133, label %134, label %196

134:                                              ; preds = %128
  %135 = load %struct.dwarf_cie*, %struct.dwarf_cie** %10, align 8
  %136 = getelementptr inbounds %struct.dwarf_cie, %struct.dwarf_cie* %135, i32 0, i32 3
  %137 = load i8*, i8** %136, align 8
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp eq i32 %139, 76
  br i1 %140, label %141, label %148

141:                                              ; preds = %134
  %142 = load i8*, i8** %7, align 8
  %143 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %143, i8** %7, align 8
  %144 = load %struct.dwarf_cie*, %struct.dwarf_cie** %10, align 8
  %145 = getelementptr inbounds %struct.dwarf_cie, %struct.dwarf_cie* %144, i32 0, i32 3
  %146 = load i8*, i8** %145, align 8
  %147 = getelementptr inbounds i8, i8* %146, i32 1
  store i8* %147, i8** %145, align 8
  br label %195

148:                                              ; preds = %134
  %149 = load %struct.dwarf_cie*, %struct.dwarf_cie** %10, align 8
  %150 = getelementptr inbounds %struct.dwarf_cie, %struct.dwarf_cie* %149, i32 0, i32 3
  %151 = load i8*, i8** %150, align 8
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp eq i32 %153, 82
  br i1 %154, label %155, label %165

155:                                              ; preds = %148
  %156 = load i8*, i8** %7, align 8
  %157 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %157, i8** %7, align 8
  %158 = load i8, i8* %156, align 1
  %159 = load %struct.dwarf_cie*, %struct.dwarf_cie** %10, align 8
  %160 = getelementptr inbounds %struct.dwarf_cie, %struct.dwarf_cie* %159, i32 0, i32 6
  store i8 %158, i8* %160, align 8
  %161 = load %struct.dwarf_cie*, %struct.dwarf_cie** %10, align 8
  %162 = getelementptr inbounds %struct.dwarf_cie, %struct.dwarf_cie* %161, i32 0, i32 3
  %163 = load i8*, i8** %162, align 8
  %164 = getelementptr inbounds i8, i8* %163, i32 1
  store i8* %164, i8** %162, align 8
  br label %194

165:                                              ; preds = %148
  %166 = load %struct.dwarf_cie*, %struct.dwarf_cie** %10, align 8
  %167 = getelementptr inbounds %struct.dwarf_cie, %struct.dwarf_cie* %166, i32 0, i32 3
  %168 = load i8*, i8** %167, align 8
  %169 = load i8, i8* %168, align 1
  %170 = sext i8 %169 to i32
  %171 = icmp eq i32 %170, 80
  br i1 %171, label %172, label %174

172:                                              ; preds = %165
  %173 = call i32 (...) @UNWINDER_BUG()
  br label %193

174:                                              ; preds = %165
  %175 = load %struct.dwarf_cie*, %struct.dwarf_cie** %10, align 8
  %176 = getelementptr inbounds %struct.dwarf_cie, %struct.dwarf_cie* %175, i32 0, i32 3
  %177 = load i8*, i8** %176, align 8
  %178 = load i8, i8* %177, align 1
  %179 = sext i8 %178 to i32
  %180 = icmp eq i32 %179, 83
  br i1 %180, label %181, label %183

181:                                              ; preds = %174
  %182 = call i32 (...) @UNWINDER_BUG()
  br label %192

183:                                              ; preds = %174
  %184 = load %struct.dwarf_cie*, %struct.dwarf_cie** %10, align 8
  %185 = getelementptr inbounds %struct.dwarf_cie, %struct.dwarf_cie* %184, i32 0, i32 9
  %186 = load i8*, i8** %185, align 8
  store i8* %186, i8** %7, align 8
  %187 = load i8*, i8** %7, align 8
  %188 = icmp ne i8* %187, null
  %189 = xor i1 %188, true
  %190 = zext i1 %189 to i32
  %191 = call i32 @UNWINDER_BUG_ON(i32 %190)
  br label %196

192:                                              ; preds = %181
  br label %193

193:                                              ; preds = %192, %172
  br label %194

194:                                              ; preds = %193, %155
  br label %195

195:                                              ; preds = %194, %141
  br label %128

196:                                              ; preds = %183, %128
  %197 = load i8*, i8** %7, align 8
  %198 = load %struct.dwarf_cie*, %struct.dwarf_cie** %10, align 8
  %199 = getelementptr inbounds %struct.dwarf_cie, %struct.dwarf_cie* %198, i32 0, i32 9
  store i8* %197, i8** %199, align 8
  %200 = load i8*, i8** %9, align 8
  %201 = load %struct.dwarf_cie*, %struct.dwarf_cie** %10, align 8
  %202 = getelementptr inbounds %struct.dwarf_cie, %struct.dwarf_cie* %201, i32 0, i32 7
  store i8* %200, i8** %202, align 8
  %203 = load i64, i64* %11, align 8
  %204 = call i32 @spin_lock_irqsave(i32* @dwarf_cie_lock, i64 %203)
  %205 = load %struct.dwarf_cie*, %struct.dwarf_cie** %10, align 8
  %206 = getelementptr inbounds %struct.dwarf_cie, %struct.dwarf_cie* %205, i32 0, i32 8
  %207 = call i32 @list_add_tail(i32* %206, i32* @dwarf_cie_list)
  %208 = load i64, i64* %11, align 8
  %209 = call i32 @spin_unlock_irqrestore(i32* @dwarf_cie_lock, i64 %208)
  store i32 0, i32* %5, align 4
  br label %210

210:                                              ; preds = %196, %19
  %211 = load i32, i32* %5, align 4
  ret i32 %211
}

declare dso_local %struct.dwarf_cie* @kzalloc(i32, i32) #1

declare dso_local i32 @UNWINDER_BUG_ON(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @dwarf_read_uleb128(i8*, i32*) #1

declare dso_local i32 @dwarf_read_leb128(i8*, i32*) #1

declare dso_local i32 @__raw_readb(i8*) #1

declare dso_local i32 @UNWINDER_BUG(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
