; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/signature/extr_ksign.c_ksign_signature_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/signature/extr_ksign.c_ksign_signature_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksign_signature = type { i64*, i64, i64, i32, i32*, i32 }
%struct.shash_desc = type { i32 }
%struct.ksign_public_key = type { i64, i32 }

@SHA1_DIGEST_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"ksign: module signed with unknown public key\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"- signature keyid: %08x%08x ver=%u\0A\00", align 1
@ENOKEY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [71 x i8] c"ksign: public key is %lu seconds newer than the signature [%lx < %lx]\0A\00", align 1
@PUBKEY_ALGO_DSA = common dso_local global i32 0, align 4
@DIGEST_ALGO_SHA1 = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BYTES_PER_MPI_LIMB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ksign_signature*, %struct.shash_desc*)* @ksign_signature_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ksign_signature_check(%struct.ksign_signature* %0, %struct.shash_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ksign_signature*, align 8
  %5 = alloca %struct.shash_desc*, align 8
  %6 = alloca %struct.ksign_public_key*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [6 x i32], align 16
  %14 = alloca i64, align 8
  store %struct.ksign_signature* %0, %struct.ksign_signature** %4, align 8
  store %struct.shash_desc* %1, %struct.shash_desc** %5, align 8
  %15 = load i32, i32* @SHA1_DIGEST_SIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %7, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  store i32* null, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %19 = load %struct.ksign_signature*, %struct.ksign_signature** %4, align 8
  %20 = getelementptr inbounds %struct.ksign_signature, %struct.ksign_signature* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = call %struct.ksign_public_key* @ksign_get_public_key(i64* %21)
  store %struct.ksign_public_key* %22, %struct.ksign_public_key** %6, align 8
  %23 = load %struct.ksign_public_key*, %struct.ksign_public_key** %6, align 8
  %24 = icmp ne %struct.ksign_public_key* %23, null
  br i1 %24, label %43, label %25

25:                                               ; preds = %2
  %26 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.ksign_signature*, %struct.ksign_signature** %4, align 8
  %28 = getelementptr inbounds %struct.ksign_signature, %struct.ksign_signature* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.ksign_signature*, %struct.ksign_signature** %4, align 8
  %33 = getelementptr inbounds %struct.ksign_signature, %struct.ksign_signature* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.ksign_signature*, %struct.ksign_signature** %4, align 8
  %38 = getelementptr inbounds %struct.ksign_signature, %struct.ksign_signature* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %31, i64 %36, i64 %39)
  %41 = load i32, i32* @ENOKEY, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %211

43:                                               ; preds = %2
  %44 = load %struct.ksign_public_key*, %struct.ksign_public_key** %6, align 8
  %45 = getelementptr inbounds %struct.ksign_public_key, %struct.ksign_public_key* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.ksign_signature*, %struct.ksign_signature** %4, align 8
  %48 = getelementptr inbounds %struct.ksign_signature, %struct.ksign_signature* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %46, %49
  br i1 %50, label %51, label %66

51:                                               ; preds = %43
  %52 = load %struct.ksign_public_key*, %struct.ksign_public_key** %6, align 8
  %53 = getelementptr inbounds %struct.ksign_public_key, %struct.ksign_public_key* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.ksign_signature*, %struct.ksign_signature** %4, align 8
  %56 = getelementptr inbounds %struct.ksign_signature, %struct.ksign_signature* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = sub nsw i64 %54, %57
  %59 = load %struct.ksign_public_key*, %struct.ksign_public_key** %6, align 8
  %60 = getelementptr inbounds %struct.ksign_public_key, %struct.ksign_public_key* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.ksign_signature*, %struct.ksign_signature** %4, align 8
  %63 = getelementptr inbounds %struct.ksign_signature, %struct.ksign_signature* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i64 %58, i64 %61, i64 %64)
  br label %66

66:                                               ; preds = %51, %43
  %67 = load %struct.ksign_signature*, %struct.ksign_signature** %4, align 8
  %68 = getelementptr inbounds %struct.ksign_signature, %struct.ksign_signature* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp sge i64 %69, 4
  br i1 %70, label %71, label %78

71:                                               ; preds = %66
  %72 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %73 = load %struct.ksign_signature*, %struct.ksign_signature** %4, align 8
  %74 = getelementptr inbounds %struct.ksign_signature, %struct.ksign_signature* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = trunc i64 %75 to i32
  %77 = call i32 @SHA1_putc(%struct.shash_desc* %72, i32 %76)
  br label %78

78:                                               ; preds = %71, %66
  %79 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %80 = load %struct.ksign_signature*, %struct.ksign_signature** %4, align 8
  %81 = getelementptr inbounds %struct.ksign_signature, %struct.ksign_signature* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @SHA1_putc(%struct.shash_desc* %79, i32 %82)
  %84 = load %struct.ksign_signature*, %struct.ksign_signature** %4, align 8
  %85 = getelementptr inbounds %struct.ksign_signature, %struct.ksign_signature* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp slt i64 %86, 4
  br i1 %87, label %88, label %113

88:                                               ; preds = %78
  %89 = load %struct.ksign_signature*, %struct.ksign_signature** %4, align 8
  %90 = getelementptr inbounds %struct.ksign_signature, %struct.ksign_signature* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %12, align 4
  %93 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %94 = load i32, i32* %12, align 4
  %95 = ashr i32 %94, 24
  %96 = and i32 %95, 255
  %97 = call i32 @SHA1_putc(%struct.shash_desc* %93, i32 %96)
  %98 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %99 = load i32, i32* %12, align 4
  %100 = ashr i32 %99, 16
  %101 = and i32 %100, 255
  %102 = call i32 @SHA1_putc(%struct.shash_desc* %98, i32 %101)
  %103 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %104 = load i32, i32* %12, align 4
  %105 = ashr i32 %104, 8
  %106 = and i32 %105, 255
  %107 = call i32 @SHA1_putc(%struct.shash_desc* %103, i32 %106)
  %108 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %109 = load i32, i32* %12, align 4
  %110 = ashr i32 %109, 0
  %111 = and i32 %110, 255
  %112 = call i32 @SHA1_putc(%struct.shash_desc* %108, i32 %111)
  br label %174

113:                                              ; preds = %78
  %114 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %115 = load i32, i32* @PUBKEY_ALGO_DSA, align 4
  %116 = call i32 @SHA1_putc(%struct.shash_desc* %114, i32 %115)
  %117 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %118 = load i32, i32* @DIGEST_ALGO_SHA1, align 4
  %119 = call i32 @SHA1_putc(%struct.shash_desc* %117, i32 %118)
  %120 = load %struct.ksign_signature*, %struct.ksign_signature** %4, align 8
  %121 = getelementptr inbounds %struct.ksign_signature, %struct.ksign_signature* %120, i32 0, i32 4
  %122 = load i32*, i32** %121, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %148

124:                                              ; preds = %113
  %125 = load %struct.ksign_signature*, %struct.ksign_signature** %4, align 8
  %126 = getelementptr inbounds %struct.ksign_signature, %struct.ksign_signature* %125, i32 0, i32 4
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 0
  %129 = load i32, i32* %128, align 4
  %130 = shl i32 %129, 8
  %131 = load %struct.ksign_signature*, %struct.ksign_signature** %4, align 8
  %132 = getelementptr inbounds %struct.ksign_signature, %struct.ksign_signature* %131, i32 0, i32 4
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 1
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %130, %135
  %137 = sext i32 %136 to i64
  store i64 %137, i64* %14, align 8
  %138 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %139 = load %struct.ksign_signature*, %struct.ksign_signature** %4, align 8
  %140 = getelementptr inbounds %struct.ksign_signature, %struct.ksign_signature* %139, i32 0, i32 4
  %141 = load i32*, i32** %140, align 8
  %142 = load i64, i64* %14, align 8
  %143 = add i64 %142, 2
  %144 = trunc i64 %143 to i32
  %145 = call i32 @SHA1_write(%struct.shash_desc* %138, i32* %141, i32 %144)
  %146 = load i64, i64* %14, align 8
  %147 = add i64 %146, 6
  store i64 %147, i64* %14, align 8
  br label %149

148:                                              ; preds = %113
  store i64 6, i64* %14, align 8
  br label %149

149:                                              ; preds = %148, %124
  %150 = load %struct.ksign_signature*, %struct.ksign_signature** %4, align 8
  %151 = getelementptr inbounds %struct.ksign_signature, %struct.ksign_signature* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = trunc i64 %152 to i32
  %154 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 0
  store i32 %153, i32* %154, align 16
  %155 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 1
  store i32 255, i32* %155, align 4
  %156 = load i64, i64* %14, align 8
  %157 = lshr i64 %156, 24
  %158 = trunc i64 %157 to i32
  %159 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 2
  store i32 %158, i32* %159, align 8
  %160 = load i64, i64* %14, align 8
  %161 = lshr i64 %160, 16
  %162 = trunc i64 %161 to i32
  %163 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 3
  store i32 %162, i32* %163, align 4
  %164 = load i64, i64* %14, align 8
  %165 = lshr i64 %164, 8
  %166 = trunc i64 %165 to i32
  %167 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 4
  store i32 %166, i32* %167, align 16
  %168 = load i64, i64* %14, align 8
  %169 = trunc i64 %168 to i32
  %170 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 5
  store i32 %169, i32* %170, align 4
  %171 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %172 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 0
  %173 = call i32 @SHA1_write(%struct.shash_desc* %171, i32* %172, i32 6)
  br label %174

174:                                              ; preds = %149, %88
  %175 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %176 = call i32 @crypto_shash_final(%struct.shash_desc* %175, i32* %18)
  %177 = load i32, i32* @ENOMEM, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %10, align 4
  %179 = load i32, i32* @SHA1_DIGEST_SIZE, align 4
  %180 = load i32, i32* @BYTES_PER_MPI_LIMB, align 4
  %181 = add nsw i32 %179, %180
  %182 = sub nsw i32 %181, 1
  %183 = load i32, i32* @BYTES_PER_MPI_LIMB, align 4
  %184 = sdiv i32 %182, %183
  %185 = call i32* @mpi_alloc(i32 %184)
  store i32* %185, i32** %9, align 8
  %186 = load i32*, i32** %9, align 8
  %187 = icmp ne i32* %186, null
  br i1 %187, label %189, label %188

188:                                              ; preds = %174
  br label %205

189:                                              ; preds = %174
  %190 = load i32*, i32** %9, align 8
  %191 = load i32, i32* @SHA1_DIGEST_SIZE, align 4
  %192 = call i32 @mpi_set_buffer(i32* %190, i32* %18, i32 %191, i32 0)
  store i32 %192, i32* %10, align 4
  %193 = load i32, i32* %10, align 4
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %189
  br label %205

196:                                              ; preds = %189
  %197 = load i32*, i32** %9, align 8
  %198 = load %struct.ksign_signature*, %struct.ksign_signature** %4, align 8
  %199 = getelementptr inbounds %struct.ksign_signature, %struct.ksign_signature* %198, i32 0, i32 5
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.ksign_public_key*, %struct.ksign_public_key** %6, align 8
  %202 = getelementptr inbounds %struct.ksign_public_key, %struct.ksign_public_key* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 8
  %204 = call i32 @DSA_verify(i32* %197, i32 %200, i32 %203)
  store i32 %204, i32* %10, align 4
  br label %205

205:                                              ; preds = %196, %195, %188
  %206 = load i32*, i32** %9, align 8
  %207 = call i32 @mpi_free(i32* %206)
  %208 = load %struct.ksign_public_key*, %struct.ksign_public_key** %6, align 8
  %209 = call i32 @ksign_put_public_key(%struct.ksign_public_key* %208)
  %210 = load i32, i32* %10, align 4
  store i32 %210, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %211

211:                                              ; preds = %205, %25
  %212 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %212)
  %213 = load i32, i32* %3, align 4
  ret i32 %213
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.ksign_public_key* @ksign_get_public_key(i64*) #2

declare dso_local i32 @printk(i8*, ...) #2

declare dso_local i32 @SHA1_putc(%struct.shash_desc*, i32) #2

declare dso_local i32 @SHA1_write(%struct.shash_desc*, i32*, i32) #2

declare dso_local i32 @crypto_shash_final(%struct.shash_desc*, i32*) #2

declare dso_local i32* @mpi_alloc(i32) #2

declare dso_local i32 @mpi_set_buffer(i32*, i32*, i32, i32) #2

declare dso_local i32 @DSA_verify(i32*, i32, i32) #2

declare dso_local i32 @mpi_free(i32*) #2

declare dso_local i32 @ksign_put_public_key(%struct.ksign_public_key*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
