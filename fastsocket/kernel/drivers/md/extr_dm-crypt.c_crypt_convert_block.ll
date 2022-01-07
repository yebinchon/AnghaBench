; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-crypt.c_crypt_convert_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-crypt.c_crypt_convert_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypt_config = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.crypt_config*, i32*, i32)* }
%struct.convert_context = type { i64, i64, i32, i32, i32, i32, i32 }
%struct.ablkcipher_request = type { i32 }
%struct.bio_vec = type { i64, i64, i32 }
%struct.dm_crypt_request = type { i32, i32, %struct.convert_context* }

@SECTOR_SHIFT = common dso_local global i32 0, align 4
@WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypt_config*, %struct.convert_context*, %struct.ablkcipher_request*)* @crypt_convert_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypt_convert_block(%struct.crypt_config* %0, %struct.convert_context* %1, %struct.ablkcipher_request* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypt_config*, align 8
  %6 = alloca %struct.convert_context*, align 8
  %7 = alloca %struct.ablkcipher_request*, align 8
  %8 = alloca %struct.bio_vec*, align 8
  %9 = alloca %struct.bio_vec*, align 8
  %10 = alloca %struct.dm_crypt_request*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.crypt_config* %0, %struct.crypt_config** %5, align 8
  store %struct.convert_context* %1, %struct.convert_context** %6, align 8
  store %struct.ablkcipher_request* %2, %struct.ablkcipher_request** %7, align 8
  %13 = load %struct.convert_context*, %struct.convert_context** %6, align 8
  %14 = getelementptr inbounds %struct.convert_context, %struct.convert_context* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.convert_context*, %struct.convert_context** %6, align 8
  %17 = getelementptr inbounds %struct.convert_context, %struct.convert_context* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.bio_vec* @bio_iovec_idx(i32 %15, i32 %18)
  store %struct.bio_vec* %19, %struct.bio_vec** %8, align 8
  %20 = load %struct.convert_context*, %struct.convert_context** %6, align 8
  %21 = getelementptr inbounds %struct.convert_context, %struct.convert_context* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.convert_context*, %struct.convert_context** %6, align 8
  %24 = getelementptr inbounds %struct.convert_context, %struct.convert_context* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.bio_vec* @bio_iovec_idx(i32 %22, i32 %25)
  store %struct.bio_vec* %26, %struct.bio_vec** %9, align 8
  store i32 0, i32* %12, align 4
  %27 = load %struct.crypt_config*, %struct.crypt_config** %5, align 8
  %28 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %7, align 8
  %29 = call %struct.dm_crypt_request* @dmreq_of_req(%struct.crypt_config* %27, %struct.ablkcipher_request* %28)
  store %struct.dm_crypt_request* %29, %struct.dm_crypt_request** %10, align 8
  %30 = load %struct.dm_crypt_request*, %struct.dm_crypt_request** %10, align 8
  %31 = getelementptr inbounds %struct.dm_crypt_request, %struct.dm_crypt_request* %30, i64 1
  %32 = ptrtoint %struct.dm_crypt_request* %31 to i64
  %33 = load %struct.crypt_config*, %struct.crypt_config** %5, align 8
  %34 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @crypto_ablkcipher_alignmask(i32 %35)
  %37 = add nsw i64 %36, 1
  %38 = call i64 @ALIGN(i64 %32, i64 %37)
  %39 = inttoptr i64 %38 to i32*
  store i32* %39, i32** %11, align 8
  %40 = load %struct.convert_context*, %struct.convert_context** %6, align 8
  %41 = load %struct.dm_crypt_request*, %struct.dm_crypt_request** %10, align 8
  %42 = getelementptr inbounds %struct.dm_crypt_request, %struct.dm_crypt_request* %41, i32 0, i32 2
  store %struct.convert_context* %40, %struct.convert_context** %42, align 8
  %43 = load %struct.dm_crypt_request*, %struct.dm_crypt_request** %10, align 8
  %44 = getelementptr inbounds %struct.dm_crypt_request, %struct.dm_crypt_request* %43, i32 0, i32 1
  %45 = call i32 @sg_init_table(i32* %44, i32 1)
  %46 = load %struct.dm_crypt_request*, %struct.dm_crypt_request** %10, align 8
  %47 = getelementptr inbounds %struct.dm_crypt_request, %struct.dm_crypt_request* %46, i32 0, i32 1
  %48 = load %struct.bio_vec*, %struct.bio_vec** %8, align 8
  %49 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @SECTOR_SHIFT, align 4
  %52 = shl i32 1, %51
  %53 = load %struct.bio_vec*, %struct.bio_vec** %8, align 8
  %54 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.convert_context*, %struct.convert_context** %6, align 8
  %57 = getelementptr inbounds %struct.convert_context, %struct.convert_context* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %55, %58
  %60 = call i32 @sg_set_page(i32* %47, i32 %50, i32 %52, i64 %59)
  %61 = load %struct.dm_crypt_request*, %struct.dm_crypt_request** %10, align 8
  %62 = getelementptr inbounds %struct.dm_crypt_request, %struct.dm_crypt_request* %61, i32 0, i32 0
  %63 = call i32 @sg_init_table(i32* %62, i32 1)
  %64 = load %struct.dm_crypt_request*, %struct.dm_crypt_request** %10, align 8
  %65 = getelementptr inbounds %struct.dm_crypt_request, %struct.dm_crypt_request* %64, i32 0, i32 0
  %66 = load %struct.bio_vec*, %struct.bio_vec** %9, align 8
  %67 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @SECTOR_SHIFT, align 4
  %70 = shl i32 1, %69
  %71 = load %struct.bio_vec*, %struct.bio_vec** %9, align 8
  %72 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.convert_context*, %struct.convert_context** %6, align 8
  %75 = getelementptr inbounds %struct.convert_context, %struct.convert_context* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %73, %76
  %78 = call i32 @sg_set_page(i32* %65, i32 %68, i32 %70, i64 %77)
  %79 = load i32, i32* @SECTOR_SHIFT, align 4
  %80 = shl i32 1, %79
  %81 = sext i32 %80 to i64
  %82 = load %struct.convert_context*, %struct.convert_context** %6, align 8
  %83 = getelementptr inbounds %struct.convert_context, %struct.convert_context* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, %81
  store i64 %85, i64* %83, align 8
  %86 = load %struct.convert_context*, %struct.convert_context** %6, align 8
  %87 = getelementptr inbounds %struct.convert_context, %struct.convert_context* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.bio_vec*, %struct.bio_vec** %8, align 8
  %90 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp sge i64 %88, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %3
  %94 = load %struct.convert_context*, %struct.convert_context** %6, align 8
  %95 = getelementptr inbounds %struct.convert_context, %struct.convert_context* %94, i32 0, i32 0
  store i64 0, i64* %95, align 8
  %96 = load %struct.convert_context*, %struct.convert_context** %6, align 8
  %97 = getelementptr inbounds %struct.convert_context, %struct.convert_context* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %93, %3
  %101 = load i32, i32* @SECTOR_SHIFT, align 4
  %102 = shl i32 1, %101
  %103 = sext i32 %102 to i64
  %104 = load %struct.convert_context*, %struct.convert_context** %6, align 8
  %105 = getelementptr inbounds %struct.convert_context, %struct.convert_context* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = add nsw i64 %106, %103
  store i64 %107, i64* %105, align 8
  %108 = load %struct.convert_context*, %struct.convert_context** %6, align 8
  %109 = getelementptr inbounds %struct.convert_context, %struct.convert_context* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.bio_vec*, %struct.bio_vec** %9, align 8
  %112 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp sge i64 %110, %113
  br i1 %114, label %115, label %122

115:                                              ; preds = %100
  %116 = load %struct.convert_context*, %struct.convert_context** %6, align 8
  %117 = getelementptr inbounds %struct.convert_context, %struct.convert_context* %116, i32 0, i32 1
  store i64 0, i64* %117, align 8
  %118 = load %struct.convert_context*, %struct.convert_context** %6, align 8
  %119 = getelementptr inbounds %struct.convert_context, %struct.convert_context* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %119, align 8
  br label %122

122:                                              ; preds = %115, %100
  %123 = load %struct.crypt_config*, %struct.crypt_config** %5, align 8
  %124 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %123, i32 0, i32 0
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = icmp ne %struct.TYPE_2__* %125, null
  br i1 %126, label %127, label %144

127:                                              ; preds = %122
  %128 = load %struct.crypt_config*, %struct.crypt_config** %5, align 8
  %129 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %128, i32 0, i32 0
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i32 (%struct.crypt_config*, i32*, i32)*, i32 (%struct.crypt_config*, i32*, i32)** %131, align 8
  %133 = load %struct.crypt_config*, %struct.crypt_config** %5, align 8
  %134 = load i32*, i32** %11, align 8
  %135 = load %struct.convert_context*, %struct.convert_context** %6, align 8
  %136 = getelementptr inbounds %struct.convert_context, %struct.convert_context* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = call i32 %132(%struct.crypt_config* %133, i32* %134, i32 %137)
  store i32 %138, i32* %12, align 4
  %139 = load i32, i32* %12, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %127
  %142 = load i32, i32* %12, align 4
  store i32 %142, i32* %4, align 4
  br label %168

143:                                              ; preds = %127
  br label %144

144:                                              ; preds = %143, %122
  %145 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %7, align 8
  %146 = load %struct.dm_crypt_request*, %struct.dm_crypt_request** %10, align 8
  %147 = getelementptr inbounds %struct.dm_crypt_request, %struct.dm_crypt_request* %146, i32 0, i32 1
  %148 = load %struct.dm_crypt_request*, %struct.dm_crypt_request** %10, align 8
  %149 = getelementptr inbounds %struct.dm_crypt_request, %struct.dm_crypt_request* %148, i32 0, i32 0
  %150 = load i32, i32* @SECTOR_SHIFT, align 4
  %151 = shl i32 1, %150
  %152 = load i32*, i32** %11, align 8
  %153 = call i32 @ablkcipher_request_set_crypt(%struct.ablkcipher_request* %145, i32* %147, i32* %149, i32 %151, i32* %152)
  %154 = load %struct.convert_context*, %struct.convert_context** %6, align 8
  %155 = getelementptr inbounds %struct.convert_context, %struct.convert_context* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = call i64 @bio_data_dir(i32 %156)
  %158 = load i64, i64* @WRITE, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %163

160:                                              ; preds = %144
  %161 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %7, align 8
  %162 = call i32 @crypto_ablkcipher_encrypt(%struct.ablkcipher_request* %161)
  store i32 %162, i32* %12, align 4
  br label %166

163:                                              ; preds = %144
  %164 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %7, align 8
  %165 = call i32 @crypto_ablkcipher_decrypt(%struct.ablkcipher_request* %164)
  store i32 %165, i32* %12, align 4
  br label %166

166:                                              ; preds = %163, %160
  %167 = load i32, i32* %12, align 4
  store i32 %167, i32* %4, align 4
  br label %168

168:                                              ; preds = %166, %141
  %169 = load i32, i32* %4, align 4
  ret i32 %169
}

declare dso_local %struct.bio_vec* @bio_iovec_idx(i32, i32) #1

declare dso_local %struct.dm_crypt_request* @dmreq_of_req(%struct.crypt_config*, %struct.ablkcipher_request*) #1

declare dso_local i64 @ALIGN(i64, i64) #1

declare dso_local i64 @crypto_ablkcipher_alignmask(i32) #1

declare dso_local i32 @sg_init_table(i32*, i32) #1

declare dso_local i32 @sg_set_page(i32*, i32, i32, i64) #1

declare dso_local i32 @ablkcipher_request_set_crypt(%struct.ablkcipher_request*, i32*, i32*, i32, i32*) #1

declare dso_local i64 @bio_data_dir(i32) #1

declare dso_local i32 @crypto_ablkcipher_encrypt(%struct.ablkcipher_request*) #1

declare dso_local i32 @crypto_ablkcipher_decrypt(%struct.ablkcipher_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
