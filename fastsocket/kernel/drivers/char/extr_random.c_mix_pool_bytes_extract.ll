; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_random.c_mix_pool_bytes_extract.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_random.c_mix_pool_bytes_extract.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entropy_store = type { i32, i64, i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, i64, i64, i64, i64 }

@mix_pool_bytes_extract.twist_table = internal constant [8 x i32] [i32 0, i32 997073096, i32 1994146192, i32 1303535960, i32 -306674912, i32 -690576408, i32 -1687895376, i32 -1609899400], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.entropy_store*, i8*, i32, i32*)* @mix_pool_bytes_extract to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mix_pool_bytes_extract(%struct.entropy_store* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.entropy_store*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store %struct.entropy_store* %0, %struct.entropy_store** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %21 = load %struct.entropy_store*, %struct.entropy_store** %5, align 8
  %22 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %21, i32 0, i32 4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 %25, 1
  store i32 %26, i32* %17, align 4
  %27 = load i8*, i8** %6, align 8
  store i8* %27, i8** %18, align 8
  %28 = load %struct.entropy_store*, %struct.entropy_store** %5, align 8
  %29 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %28, i32 0, i32 4
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %11, align 8
  %33 = load %struct.entropy_store*, %struct.entropy_store** %5, align 8
  %34 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %33, i32 0, i32 4
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %12, align 8
  %38 = load %struct.entropy_store*, %struct.entropy_store** %5, align 8
  %39 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %38, i32 0, i32 4
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %13, align 8
  %43 = load %struct.entropy_store*, %struct.entropy_store** %5, align 8
  %44 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %43, i32 0, i32 4
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %14, align 8
  %48 = load %struct.entropy_store*, %struct.entropy_store** %5, align 8
  %49 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %48, i32 0, i32 4
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 5
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %15, align 8
  %53 = load %struct.entropy_store*, %struct.entropy_store** %5, align 8
  %54 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %53, i32 0, i32 3
  %55 = load i64, i64* %20, align 8
  %56 = call i32 @spin_lock_irqsave(i32* %54, i64 %55)
  %57 = load %struct.entropy_store*, %struct.entropy_store** %5, align 8
  %58 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %16, align 4
  %60 = load %struct.entropy_store*, %struct.entropy_store** %5, align 8
  %61 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %9, align 8
  br label %63

63:                                               ; preds = %67, %4
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %7, align 4
  %66 = icmp ne i32 %64, 0
  br i1 %66, label %67, label %172

67:                                               ; preds = %63
  %68 = load i8*, i8** %18, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %18, align 8
  %70 = load i8, i8* %68, align 1
  %71 = sext i8 %70 to i32
  %72 = load i32, i32* %16, align 4
  %73 = and i32 %72, 31
  %74 = call i32 @rol32(i32 %71, i32 %73)
  store i32 %74, i32* %19, align 4
  %75 = load i64, i64* %9, align 8
  %76 = sub i64 %75, 1
  %77 = load i32, i32* %17, align 4
  %78 = sext i32 %77 to i64
  %79 = and i64 %76, %78
  store i64 %79, i64* %9, align 8
  %80 = load %struct.entropy_store*, %struct.entropy_store** %5, align 8
  %81 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = load i64, i64* %9, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %19, align 4
  %87 = xor i32 %86, %85
  store i32 %87, i32* %19, align 4
  %88 = load %struct.entropy_store*, %struct.entropy_store** %5, align 8
  %89 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = load i64, i64* %9, align 8
  %92 = load i64, i64* %11, align 8
  %93 = add i64 %91, %92
  %94 = load i32, i32* %17, align 4
  %95 = sext i32 %94 to i64
  %96 = and i64 %93, %95
  %97 = getelementptr inbounds i32, i32* %90, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %19, align 4
  %100 = xor i32 %99, %98
  store i32 %100, i32* %19, align 4
  %101 = load %struct.entropy_store*, %struct.entropy_store** %5, align 8
  %102 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = load i64, i64* %9, align 8
  %105 = load i64, i64* %12, align 8
  %106 = add i64 %104, %105
  %107 = load i32, i32* %17, align 4
  %108 = sext i32 %107 to i64
  %109 = and i64 %106, %108
  %110 = getelementptr inbounds i32, i32* %103, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %19, align 4
  %113 = xor i32 %112, %111
  store i32 %113, i32* %19, align 4
  %114 = load %struct.entropy_store*, %struct.entropy_store** %5, align 8
  %115 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %114, i32 0, i32 2
  %116 = load i32*, i32** %115, align 8
  %117 = load i64, i64* %9, align 8
  %118 = load i64, i64* %13, align 8
  %119 = add i64 %117, %118
  %120 = load i32, i32* %17, align 4
  %121 = sext i32 %120 to i64
  %122 = and i64 %119, %121
  %123 = getelementptr inbounds i32, i32* %116, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %19, align 4
  %126 = xor i32 %125, %124
  store i32 %126, i32* %19, align 4
  %127 = load %struct.entropy_store*, %struct.entropy_store** %5, align 8
  %128 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %127, i32 0, i32 2
  %129 = load i32*, i32** %128, align 8
  %130 = load i64, i64* %9, align 8
  %131 = load i64, i64* %14, align 8
  %132 = add i64 %130, %131
  %133 = load i32, i32* %17, align 4
  %134 = sext i32 %133 to i64
  %135 = and i64 %132, %134
  %136 = getelementptr inbounds i32, i32* %129, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %19, align 4
  %139 = xor i32 %138, %137
  store i32 %139, i32* %19, align 4
  %140 = load %struct.entropy_store*, %struct.entropy_store** %5, align 8
  %141 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %140, i32 0, i32 2
  %142 = load i32*, i32** %141, align 8
  %143 = load i64, i64* %9, align 8
  %144 = load i64, i64* %15, align 8
  %145 = add i64 %143, %144
  %146 = load i32, i32* %17, align 4
  %147 = sext i32 %146 to i64
  %148 = and i64 %145, %147
  %149 = getelementptr inbounds i32, i32* %142, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %19, align 4
  %152 = xor i32 %151, %150
  store i32 %152, i32* %19, align 4
  %153 = load i32, i32* %19, align 4
  %154 = ashr i32 %153, 3
  %155 = load i32, i32* %19, align 4
  %156 = and i32 %155, 7
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [8 x i32], [8 x i32]* @mix_pool_bytes_extract.twist_table, i64 0, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = xor i32 %154, %159
  %161 = load %struct.entropy_store*, %struct.entropy_store** %5, align 8
  %162 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %161, i32 0, i32 2
  %163 = load i32*, i32** %162, align 8
  %164 = load i64, i64* %9, align 8
  %165 = getelementptr inbounds i32, i32* %163, i64 %164
  store i32 %160, i32* %165, align 4
  %166 = load i64, i64* %9, align 8
  %167 = icmp ne i64 %166, 0
  %168 = zext i1 %167 to i64
  %169 = select i1 %167, i32 7, i32 14
  %170 = load i32, i32* %16, align 4
  %171 = add nsw i32 %170, %169
  store i32 %171, i32* %16, align 4
  br label %63

172:                                              ; preds = %63
  %173 = load i32, i32* %16, align 4
  %174 = load %struct.entropy_store*, %struct.entropy_store** %5, align 8
  %175 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %174, i32 0, i32 0
  store i32 %173, i32* %175, align 8
  %176 = load i64, i64* %9, align 8
  %177 = load %struct.entropy_store*, %struct.entropy_store** %5, align 8
  %178 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %177, i32 0, i32 1
  store i64 %176, i64* %178, align 8
  %179 = load i32*, i32** %8, align 8
  %180 = icmp ne i32* %179, null
  br i1 %180, label %181, label %204

181:                                              ; preds = %172
  store i64 0, i64* %10, align 8
  br label %182

182:                                              ; preds = %200, %181
  %183 = load i64, i64* %10, align 8
  %184 = icmp ult i64 %183, 16
  br i1 %184, label %185, label %203

185:                                              ; preds = %182
  %186 = load %struct.entropy_store*, %struct.entropy_store** %5, align 8
  %187 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %186, i32 0, i32 2
  %188 = load i32*, i32** %187, align 8
  %189 = load i64, i64* %9, align 8
  %190 = load i64, i64* %10, align 8
  %191 = sub i64 %189, %190
  %192 = load i32, i32* %17, align 4
  %193 = sext i32 %192 to i64
  %194 = and i64 %191, %193
  %195 = getelementptr inbounds i32, i32* %188, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = load i32*, i32** %8, align 8
  %198 = load i64, i64* %10, align 8
  %199 = getelementptr inbounds i32, i32* %197, i64 %198
  store i32 %196, i32* %199, align 4
  br label %200

200:                                              ; preds = %185
  %201 = load i64, i64* %10, align 8
  %202 = add i64 %201, 1
  store i64 %202, i64* %10, align 8
  br label %182

203:                                              ; preds = %182
  br label %204

204:                                              ; preds = %203, %172
  %205 = load %struct.entropy_store*, %struct.entropy_store** %5, align 8
  %206 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %205, i32 0, i32 3
  %207 = load i64, i64* %20, align 8
  %208 = call i32 @spin_unlock_irqrestore(i32* %206, i64 %207)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @rol32(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
