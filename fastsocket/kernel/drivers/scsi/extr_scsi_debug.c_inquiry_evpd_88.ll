; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_debug.c_inquiry_evpd_88.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_debug.c_inquiry_evpd_88.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @inquiry_evpd_88 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inquiry_evpd_88(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %7, align 4
  %12 = load i8*, i8** %3, align 8
  %13 = load i32, i32* %5, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %5, align 4
  %15 = sext i32 %13 to i64
  %16 = getelementptr inbounds i8, i8* %12, i64 %15
  store i8 0, i8* %16, align 1
  %17 = load i8*, i8** %3, align 8
  %18 = load i32, i32* %5, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %5, align 4
  %20 = sext i32 %18 to i64
  %21 = getelementptr inbounds i8, i8* %17, i64 %20
  store i8 0, i8* %21, align 1
  %22 = load i8*, i8** %3, align 8
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds i8, i8* %22, i64 %25
  store i8 0, i8* %26, align 1
  %27 = load i8*, i8** %3, align 8
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i8, i8* %27, i64 %30
  store i8 1, i8* %31, align 1
  %32 = load i8*, i8** %3, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = call i32 @memset(i8* %35, i32 0, i32 6)
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 6
  store i32 %38, i32* %5, align 4
  %39 = load i8*, i8** %3, align 8
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i8, i8* %39, i64 %42
  store i8 0, i8* %43, align 1
  %44 = load i8*, i8** %3, align 8
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i8, i8* %44, i64 %47
  store i8 12, i8* %48, align 1
  %49 = load i8*, i8** %3, align 8
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i8, i8* %49, i64 %52
  store i8 97, i8* %53, align 1
  %54 = load i8*, i8** %3, align 8
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i8, i8* %54, i64 %57
  store i8 -109, i8* %58, align 1
  %59 = load i8*, i8** %3, align 8
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %5, align 4
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i8, i8* %59, i64 %62
  store i8 0, i8* %63, align 1
  %64 = load i8*, i8** %3, align 8
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %5, align 4
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i8, i8* %64, i64 %67
  store i8 8, i8* %68, align 1
  %69 = load i8*, i8** %3, align 8
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i8, i8* %69, i64 %72
  store i8 82, i8* %73, align 1
  %74 = load i8*, i8** %3, align 8
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds i8, i8* %74, i64 %77
  store i8 34, i8* %78, align 1
  %79 = load i8*, i8** %3, align 8
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %5, align 4
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i8, i8* %79, i64 %82
  store i8 34, i8* %83, align 1
  %84 = load i8*, i8** %3, align 8
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %5, align 4
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i8, i8* %84, i64 %87
  store i8 32, i8* %88, align 1
  %89 = load i32, i32* %6, align 4
  %90 = ashr i32 %89, 24
  %91 = trunc i32 %90 to i8
  %92 = load i8*, i8** %3, align 8
  %93 = load i32, i32* %5, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %5, align 4
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i8, i8* %92, i64 %95
  store i8 %91, i8* %96, align 1
  %97 = load i32, i32* %6, align 4
  %98 = ashr i32 %97, 16
  %99 = and i32 %98, 255
  %100 = trunc i32 %99 to i8
  %101 = load i8*, i8** %3, align 8
  %102 = load i32, i32* %5, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %5, align 4
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds i8, i8* %101, i64 %104
  store i8 %100, i8* %105, align 1
  %106 = load i32, i32* %6, align 4
  %107 = ashr i32 %106, 8
  %108 = and i32 %107, 255
  %109 = trunc i32 %108 to i8
  %110 = load i8*, i8** %3, align 8
  %111 = load i32, i32* %5, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %5, align 4
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds i8, i8* %110, i64 %113
  store i8 %109, i8* %114, align 1
  %115 = load i32, i32* %6, align 4
  %116 = and i32 %115, 255
  %117 = trunc i32 %116 to i8
  %118 = load i8*, i8** %3, align 8
  %119 = load i32, i32* %5, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %5, align 4
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i8, i8* %118, i64 %121
  store i8 %117, i8* %122, align 1
  %123 = load i8*, i8** %3, align 8
  %124 = load i32, i32* %5, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %5, align 4
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds i8, i8* %123, i64 %126
  store i8 0, i8* %127, align 1
  %128 = load i8*, i8** %3, align 8
  %129 = load i32, i32* %5, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %5, align 4
  %131 = sext i32 %129 to i64
  %132 = getelementptr inbounds i8, i8* %128, i64 %131
  store i8 0, i8* %132, align 1
  %133 = load i8*, i8** %3, align 8
  %134 = load i32, i32* %5, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %5, align 4
  %136 = sext i32 %134 to i64
  %137 = getelementptr inbounds i8, i8* %133, i64 %136
  store i8 0, i8* %137, align 1
  %138 = load i8*, i8** %3, align 8
  %139 = load i32, i32* %5, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %5, align 4
  %141 = sext i32 %139 to i64
  %142 = getelementptr inbounds i8, i8* %138, i64 %141
  store i8 2, i8* %142, align 1
  %143 = load i8*, i8** %3, align 8
  %144 = load i32, i32* %5, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %143, i64 %145
  %147 = call i32 @memset(i8* %146, i32 0, i32 6)
  %148 = load i32, i32* %5, align 4
  %149 = add nsw i32 %148, 6
  store i32 %149, i32* %5, align 4
  %150 = load i8*, i8** %3, align 8
  %151 = load i32, i32* %5, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %5, align 4
  %153 = sext i32 %151 to i64
  %154 = getelementptr inbounds i8, i8* %150, i64 %153
  store i8 0, i8* %154, align 1
  %155 = load i8*, i8** %3, align 8
  %156 = load i32, i32* %5, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %5, align 4
  %158 = sext i32 %156 to i64
  %159 = getelementptr inbounds i8, i8* %155, i64 %158
  store i8 12, i8* %159, align 1
  %160 = load i8*, i8** %3, align 8
  %161 = load i32, i32* %5, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %5, align 4
  %163 = sext i32 %161 to i64
  %164 = getelementptr inbounds i8, i8* %160, i64 %163
  store i8 97, i8* %164, align 1
  %165 = load i8*, i8** %3, align 8
  %166 = load i32, i32* %5, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %5, align 4
  %168 = sext i32 %166 to i64
  %169 = getelementptr inbounds i8, i8* %165, i64 %168
  store i8 -109, i8* %169, align 1
  %170 = load i8*, i8** %3, align 8
  %171 = load i32, i32* %5, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %5, align 4
  %173 = sext i32 %171 to i64
  %174 = getelementptr inbounds i8, i8* %170, i64 %173
  store i8 0, i8* %174, align 1
  %175 = load i8*, i8** %3, align 8
  %176 = load i32, i32* %5, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %5, align 4
  %178 = sext i32 %176 to i64
  %179 = getelementptr inbounds i8, i8* %175, i64 %178
  store i8 8, i8* %179, align 1
  %180 = load i8*, i8** %3, align 8
  %181 = load i32, i32* %5, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %5, align 4
  %183 = sext i32 %181 to i64
  %184 = getelementptr inbounds i8, i8* %180, i64 %183
  store i8 82, i8* %184, align 1
  %185 = load i8*, i8** %3, align 8
  %186 = load i32, i32* %5, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %5, align 4
  %188 = sext i32 %186 to i64
  %189 = getelementptr inbounds i8, i8* %185, i64 %188
  store i8 34, i8* %189, align 1
  %190 = load i8*, i8** %3, align 8
  %191 = load i32, i32* %5, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %5, align 4
  %193 = sext i32 %191 to i64
  %194 = getelementptr inbounds i8, i8* %190, i64 %193
  store i8 34, i8* %194, align 1
  %195 = load i8*, i8** %3, align 8
  %196 = load i32, i32* %5, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %5, align 4
  %198 = sext i32 %196 to i64
  %199 = getelementptr inbounds i8, i8* %195, i64 %198
  store i8 32, i8* %199, align 1
  %200 = load i32, i32* %7, align 4
  %201 = ashr i32 %200, 24
  %202 = trunc i32 %201 to i8
  %203 = load i8*, i8** %3, align 8
  %204 = load i32, i32* %5, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %5, align 4
  %206 = sext i32 %204 to i64
  %207 = getelementptr inbounds i8, i8* %203, i64 %206
  store i8 %202, i8* %207, align 1
  %208 = load i32, i32* %7, align 4
  %209 = ashr i32 %208, 16
  %210 = and i32 %209, 255
  %211 = trunc i32 %210 to i8
  %212 = load i8*, i8** %3, align 8
  %213 = load i32, i32* %5, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %5, align 4
  %215 = sext i32 %213 to i64
  %216 = getelementptr inbounds i8, i8* %212, i64 %215
  store i8 %211, i8* %216, align 1
  %217 = load i32, i32* %7, align 4
  %218 = ashr i32 %217, 8
  %219 = and i32 %218, 255
  %220 = trunc i32 %219 to i8
  %221 = load i8*, i8** %3, align 8
  %222 = load i32, i32* %5, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %5, align 4
  %224 = sext i32 %222 to i64
  %225 = getelementptr inbounds i8, i8* %221, i64 %224
  store i8 %220, i8* %225, align 1
  %226 = load i32, i32* %7, align 4
  %227 = and i32 %226, 255
  %228 = trunc i32 %227 to i8
  %229 = load i8*, i8** %3, align 8
  %230 = load i32, i32* %5, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %5, align 4
  %232 = sext i32 %230 to i64
  %233 = getelementptr inbounds i8, i8* %229, i64 %232
  store i8 %228, i8* %233, align 1
  %234 = load i32, i32* %5, align 4
  ret i32 %234
}

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
